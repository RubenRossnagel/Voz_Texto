using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App_Audio_Texto
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            
            //MainPage = new MainPage();

            //tiene el nombre mainpage por defecto....
            //estamos usando el navigation page, por eso anda el push as
            MainPage paginaPrincipal = new MainPage();
            NavigationPage navigationPage = new NavigationPage(paginaPrincipal);
            Application.Current.MainPage = navigationPage;

        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
