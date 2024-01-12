using App_Audio_Texto.Config;
using System;
using System.Collections.Generic;
using System.Linq;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App_Audio_Texto.PAGES
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class Page_Config : ContentPage
	{
        private List<vozAzure> opciones;
        public string SelectedOption { get; set; }

        public Page_Config ()
		{
			InitializeComponent ();

            opciones = new List<vozAzure>
        {
            new vozAzure { ID = 1, CodigoAzure = "es-BO-SofiaNeural", Descripcion = "Interlocutora = Sofia - Bolivia", Mujer = true },
            new vozAzure { ID = 2, CodigoAzure = "es-AR-ElenaNeural", Descripcion = "Interlocutora = Elena - Arg", Mujer = true},
            new vozAzure { ID = 3, CodigoAzure = "es-AR-TomasNeural", Descripcion = "Interlocutor = Tomas - Arg",  Mujer = false},
            new vozAzure { ID = 4, CodigoAzure = "es-BO-MarceloNeural", Descripcion = "Interlocutor = Marcelo - Bolivia",  Mujer = false},
            new vozAzure { ID = 5, CodigoAzure = "es-CL-CatalinaNeural", Descripcion = "Interlocutora = Catalina - Chile",  Mujer = true},
            new vozAzure { ID = 6, CodigoAzure = "es-CO-SalomeNeural", Descripcion = "Interlocutora = Salome - Colombia",  Mujer = true},
            new vozAzure { ID = 7, CodigoAzure = "es-CO-GonzaloNeural", Descripcion = "Interlocutor = Gonzalo - Colombia",  Mujer = false},
            new vozAzure { ID = 8, CodigoAzure = "es-CR-MariaNeural", Descripcion = "Interlocutora = Maria - Costa Rica",  Mujer = true},
            new vozAzure { ID = 9, CodigoAzure = "es-CU-BelkysNeural", Descripcion = "Interlocutora = Belkys - Cuba",  Mujer = true},
            new vozAzure { ID = 10, CodigoAzure = "es-CU-ManuelNeural", Descripcion = "Interlocutor = Manuel - Cuba",  Mujer = false},
            new vozAzure { ID = 11, CodigoAzure = "es-EC-AndreaNeural", Descripcion = "Interlocutora = Andrea - Ecuador",  Mujer = true},
        };

            OptionsPicker.ItemsSource = opciones;

        }

        //public List<string> Options { get; set; } = new List<string> { "Opción 1", "Opción 2", "Opción 3" };
        

        private void OnItemSelected(object sender, EventArgs e)
        {
            //var selectedOption = OptionsPicker.SelectedItem?.ToString();
            //// Realiza acciones con la opción seleccionada, por ejemplo, almacenarla en una variable global
            //GlobalVariables.Voz_Option = selectedOption;


            var selectedOption = (vozAzure)OptionsPicker.SelectedItem;

            // Acceder a las propiedades del objeto seleccionado de manera segura
            var id = selectedOption?.ID;
            var codigoAzure = selectedOption?.CodigoAzure;
            var descripcion = selectedOption?.Descripcion;

            // Realizar acciones con las propiedades

            GlobalVariables.Voz_Option = selectedOption?.CodigoAzure;

        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            var selectedOption = opciones.FirstOrDefault(x => x.CodigoAzure == GlobalVariables.Voz_Option);

            if (selectedOption != null)
            {
                OptionsPicker.SelectedItem = selectedOption;
            }
        }

        public class vozAzure
        {
            public int ID { get; set; }
            public string CodigoAzure { get; set; }
            public string Descripcion { get; set; }

            public bool Mujer { get; set; }

            public override string ToString()
            {
                return Descripcion; // Esto determinará lo que se muestra en el Picker
            }
        }
    }
}