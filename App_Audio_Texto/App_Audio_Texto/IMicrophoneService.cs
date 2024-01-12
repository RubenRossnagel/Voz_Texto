using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace App_Audio_Texto
{
    public interface IMicrophoneService
    {
        Task<bool> GetPermissionAsync();
        void OnRequestPermissionResult(bool isGranted);
    }
}
