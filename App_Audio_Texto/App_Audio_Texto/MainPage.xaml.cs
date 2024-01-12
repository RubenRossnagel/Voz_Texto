using Xamarin.Forms;
using Microsoft.CognitiveServices.Speech;
using System;
using System.Threading.Tasks;
using App_Audio_Texto.PAGES;
using System.Collections.Generic;
using App_Audio_Texto.Config;
using System.Net.Http;
using System.Text;
using Newtonsoft.Json;
using OpenAI_API.Models;

namespace App_Audio_Texto
{
    public partial class MainPage : ContentPage
    {
        SpeechRecognizer recognizer;
        IMicrophoneService micService;
        bool isTranscribing = false;
        string texto=""; // lo q habla el man
        private Config.SqlConnectionManager sqlConnectionManager;

        public MainPage()
        {
            InitializeComponent();
            //accedemos al microfono
            micService = DependencyService.Resolve<IMicrophoneService>();

            // Inicializa SqlConnectionManager
            sqlConnectionManager = new Config.SqlConnectionManager();

            // Intenta establecer la conexión
            bool conexionExitosa = IntentarEstablecerConexion();
        }

        async void TranscribeClicked(object sender, EventArgs e)
        {
            bool isMicEnabled = await micService.GetPermissionAsync();

            // asegurarnos de que el micrófono esté accesible
            if (!isMicEnabled)
            {
                UpdateTranscription("otorgar permisos al microfono!");
                return;
            }

            // inicializar el reconocedor de voz
            if (recognizer == null)
            {
                //aca le pasamos los valores de nuestro servicio a el obj config
                var config = SpeechConfig.FromSubscription(Constants.CognitiveServicesApiKey, Constants.CognitiveServicesRegion);
                //aca esta el secretitoooctm
                config.SpeechRecognitionLanguage = "es-ES";
                recognizer = new SpeechRecognizer(config);
                recognizer.Recognized += (obj, args) =>
                {
                    UpdateTranscription(args.Result.Text);
                };
            }

            // si ya está transcribiendo, detener el reconocimiento de voz
            if (isTranscribing)
            {
                try
                {
                    await recognizer.StopContinuousRecognitionAsync();
                }
                catch (Exception ex)
                {
                    UpdateTranscription(ex.Message);
                }
                isTranscribing = false;
            }

            // si no está transcribiendo, inicie el reconocimiento de voz
            else
            {
                Device.BeginInvokeOnMainThread(() =>
                {
                    InsertDateTimeRecord();
                });
                try
                {
                    await recognizer.StartContinuousRecognitionAsync();
                }
                catch (Exception ex)
                {
                    UpdateTranscription(ex.Message);
                }
                isTranscribing = true;
            }
            UpdateDisplayState();
        }

        void UpdateTranscription(string newText)
        {
            Device.BeginInvokeOnMainThread(() =>
            {
                if (!string.IsNullOrWhiteSpace(newText))
                {
                    transcribedText.Text += $"{newText}\n";
                    //guardamos lo que dijo el man
                    texto = newText;
                }
            });
        }

        void InsertDateTimeRecord()
        {
            transcribedText.Text = string.Empty; //LIMPIAMOS EL TEXTO ANTERIOR
            var msg = $"=================\n{DateTime.Now.ToString()}\n=================";
            UpdateTranscription(msg);
        }

        void UpdateDisplayState()
        {
            Device.BeginInvokeOnMainThread(() =>
            {
                if (isTranscribing)
                {
                    transcribeButton.Text = "Detener";
                    transcribeButton.BackgroundColor = Color.Red;
                    transcribingIndicator.IsRunning = true;
                }
                else
                {
                    Color color = Color.FromRgb(33, 150, 243);
                    transcribeButton.Text = "Habla";
                    transcribeButton.BackgroundColor = color;
                    transcribingIndicator.IsRunning = false;
                }
            });
            
        }

        private async void TextVoz(object sender, EventArgs e)
        {
            // Código para manejar el evento
            await TextVozAsync(sender, e);
        }

        private async Task TextVozAsync(object sender, EventArgs e)
        {
            // Creates an instance of a speech config with specified subscription key and service region.
            string subscriptionKey = GlobalVariables.Code_Azure;
            string subscriptionRegion = "eastus";
            var config = SpeechConfig.FromSubscription(subscriptionKey, subscriptionRegion);
            //config.SpeechSynthesisVoiceName = "es-BO-SofiaNeural";
            config.SpeechSynthesisVoiceName = GlobalVariables.Voz_Option;
            string text = texto; //pasamos lo que hablamos
            // use the default speaker as audio output.
            using (var synthesizer = new SpeechSynthesizer(config))
            {
                using (var result = await synthesizer.SpeakTextAsync(text))
                {
                    if (result.Reason == ResultReason.SynthesizingAudioCompleted)
                    {
                        Console.WriteLine($"Speech synthesized for text [{text}]");
                    }
                    else if (result.Reason == ResultReason.Canceled)
                    {
                        var cancellation = SpeechSynthesisCancellationDetails.FromResult(result);
                        Console.WriteLine($"CANCELED: Reason={cancellation.Reason}");

                        if (cancellation.Reason == CancellationReason.Error)
                        {
                            Console.WriteLine($"CANCELED: ErrorCode={cancellation.ErrorCode}");
                            Console.WriteLine($"CANCELED: ErrorDetails=[{cancellation.ErrorDetails}]");
                            Console.WriteLine($"CANCELED: Did you update the subscription info?");
                        }
                    }
                }
            }
        }

        private void AbrirConfig(object sender, EventArgs e)
        {
            //antes no andaba por que no tenia inicializado el navigation
            Navigation.PushAsync(new Page_Config(),true);
            //Navigation.PushAsync(new Page_Config(), true);: Está utilizando el servicio de navegación(Navigation) para navegar a una nueva página.
            //new Page_Config() crea una nueva instancia de la clase Page_Config, que probablemente es una página en tu aplicación.
            //PushAsync agrega esta nueva página a la pila de navegación, lo que significa que se mostrará como la página actual.
        }

        /// <summary>
        /// Esta Funcion es para conectar con el CHAT GTP de Azure
        /// </summary>
        /// <param name="mensajeUsuario">Aca pasamos el mensaje que queremos obtener una respuesta de CHAT GTP de Azure</param>
        /// <returns>Una respuesta de CHAT GTP de Azure</returns>
        private async Task<string> ObtenerRespuestaChatGPTAsync(string mensajeUsuario)
        {
            try
            {
                // Reemplaza "YOUR_API_KEY" con tu clave de API de OpenAI
                var apiKey = GlobalVariables.Code_Azure;

                // Configura el endpoint de OpenAI en Azure
                var openAIEndpoint = "eastus"; // Reemplaza con tu URL de Azure OpenAI Endpoint

                // Configura el modelo (puedes usar GPT-4 Turbo u otro modelo de tu elección)
                var model = Model.DefaultModel;

                // Construye el mensaje de entrada para ChatGPT
                var messages = new List<Dictionary<string, string>>
        {
            new Dictionary<string, string> { { "role", "system" }, { "content", "Hola, generame una respuesta corta" } },
            new Dictionary<string, string> { { "role", "user" }, { "content", mensajeUsuario } }
        };

                // Convierte el mensaje a JSON
                var jsonPayload = JsonConvert.SerializeObject(new { messages });

                // Realiza la solicitud a la API de OpenAI
                using (HttpClient client = new HttpClient())
                {
                    // Configura la solicitud HTTP
                    client.DefaultRequestHeaders.Add("Content-Type", "application/json");
                    client.DefaultRequestHeaders.Add("Authorization", $"Bearer {apiKey}");

                    // Realiza la solicitud POST a la API de OpenAI
                    HttpResponseMessage response = await client.PostAsync(openAIEndpoint, new StringContent(jsonPayload, Encoding.UTF8, "application/json"));

                    // Maneja la respuesta
                    if (response.IsSuccessStatusCode)
                    {
                        return await response.Content.ReadAsStringAsync();
                    }
                    else
                    {
                        return $"Error: {response.StatusCode}";
                    }
                }
            }
            catch (Exception ex)
            {
                // Manejar errores de manera adecuada
                return $"Error en la solicitud a ChatGPT: {ex.Message}";
            }
        }

        private async void IA_respuesta(object sender, EventArgs e)
        {
            try
            {
                // Obtener la respuesta de ChatGPT
                string respuestaChatGPT = await ObtenerRespuestaChatGPTAsync(texto); // `texto` es el último mensaje del usuario

                //escribimos la respuesta ia
                UpdateTranscription(respuestaChatGPT);

                // Sintetizar la respuesta con el Speech SDK de Microsoft
                await TextVozAsync(respuestaChatGPT, e);
            }
            catch (Exception ex)
            {
                UpdateTranscription($"Error en la respuesta de ChatGPT: {ex.Message}");
            }
        }

        /// <summary>
        /// Intentamos Establecer la conexion con SQL
        /// </summary>
        /// <returns> verdadero o falso </returns>
        private bool IntentarEstablecerConexion()
        {
            bool conexionExitosa = false;

            try
            {
                // Intenta abrir la conexión
                conexionExitosa = sqlConnectionManager.AbrirConexion();

                // Actualiza el estado del Label según el resultado
                if (conexionExitosa)
                {
                    conexionStatusLabel.BackgroundColor = Color.Green;
                    conexionStatusLabel.Text = "OK";
                }
                else
                {
                    conexionStatusLabel.BackgroundColor = Color.Red;
                    conexionStatusLabel.Text = "FALSE";
                }

                // Retorna el resultado de la conexión
                return conexionExitosa;
            }
            catch (Exception ex)
            {
                // Maneja cualquier error de conexión aquí (puedes mostrar un mensaje de error o realizar otras acciones)
                conexionStatusLabel.Text = "Error al intentar establecer la conexión:" + ex.Message;
                // Si hay un error, devuelve false
                return false;
            }
            finally
            {
                // Cierra la conexión (puedes ajustar esto según tus necesidades)
                sqlConnectionManager.CerrarConexion();
            }
        }

    }
}