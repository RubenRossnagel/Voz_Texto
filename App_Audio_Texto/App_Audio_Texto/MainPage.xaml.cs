using Xamarin.Forms;
using Microsoft.CognitiveServices.Speech;
using System;
using Microsoft.CognitiveServices.Speech.Audio;

namespace App_Audio_Texto
{
    public partial class MainPage : ContentPage
    {
        SpeechRecognizer recognizer;
        IMicrophoneService micService;
        bool isTranscribing = false;
        string texto="";

        public MainPage()
        {
            InitializeComponent();

            micService = DependencyService.Resolve<IMicrophoneService>();
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
                    transcribeButton.Text = texto;
                    transcribeButton.BackgroundColor = color;
                    transcribingIndicator.IsRunning = false;
                }
            });
        }
    }
}