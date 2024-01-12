using System;
using System.Data.SqlClient;

namespace App_Audio_Texto.Config
{
    internal class SqlConnectionManager
    {
        SqlConnection connection;

        public SqlConnectionManager()
        {
            // Crear una inºstancia de GlobalVariables
            GlobalVariables globalVariables = new GlobalVariables();

            // Utilizamos las propiedades de GlobalVariables para construir la cadena de conexión
            string connectionString = $"User ID={globalVariables.UsuarioServidorSQL};Password={globalVariables.ContraseñaServidorSQL};Initial Catalog={globalVariables.NombreDB};Data Source={globalVariables.ServidorSQL}";
            //string connectionString = "Data Source=servidorpruebadrr.database.windows.net;Initial Catalog=PruebaDB;User ID=Ruben;Password=Kev5689#";
            //string connectionString = "Data Source = servidorpruebadrr.database.windows.net; Initial Catalog = PruebaDB; User ID = Ruben; Password = Kev5689#";
            connection = new SqlConnection(connectionString);
        }

        public bool AbrirConexion()
        {
            try
            {
                if (connection.State == System.Data.ConnectionState.Closed)
                {
                    connection.Open();
                }

                //connection.Open();

                return true; // Devuelve true si la conexión se abre correctamente
            }
            catch (Exception ex)
            {
                return false; // Devuelve false si hay un error al abrir la conexión
            }
        }


        public void CerrarConexion()
        {
            try
            {
                if (connection.State == System.Data.ConnectionState.Open)
                {
                    connection.Close();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error al cerrar la conexión: {ex.Message}");
            }
        }
    }
}