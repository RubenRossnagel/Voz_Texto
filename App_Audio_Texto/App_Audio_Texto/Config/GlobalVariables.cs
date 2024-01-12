namespace App_Audio_Texto.Config
{
    internal class GlobalVariables
    {
        public static string Voz_Option { get; set; } = "es-BO-SofiaNeural"; //valor por defecto, sofia bolivia
        public static string Code_Azure { get; set; } = "4a2e209c3e184acd940499038de6cec6"; //valor por defecto, subscriptionKey
        public string ServidorSQL { get; set; } = "servidorpruebadrr.database.windows.net"; //valor por defecto del servidor sql
        public string UsuarioServidorSQL { get; set; } = "Ruben"; //valor por defecto del usuario del servidor sql
        public string ContraseñaServidorSQL { get; set; } = "Kev5689#"; //valor por defecto de la contraseña del servidor sql
        public string NombreDB { get; set; } = "PruebaDB"; //valor por defecto del nombre de la base de datos sql
    }
}