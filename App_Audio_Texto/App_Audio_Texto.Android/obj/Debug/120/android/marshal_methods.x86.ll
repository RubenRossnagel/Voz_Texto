; ModuleID = 'obj\Debug\120\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\120\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [252 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 82
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 111
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 23
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 106
	i32 100385486, ; 4: Microsoft.Azure.Services.AppAuthentication.dll => 0x5fbc2ce => 7
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 96
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 96
	i32 160529393, ; 7: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 40
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 63
	i32 166922606, ; 9: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 45
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 97
	i32 209399409, ; 11: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 61
	i32 230216969, ; 12: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 77
	i32 230752869, ; 13: Microsoft.CSharp.dll => 0xdc10265 => 10
	i32 232815796, ; 14: System.Web.Services => 0xde07cb4 => 119
	i32 261689757, ; 15: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 66
	i32 278686392, ; 16: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 81
	i32 280482487, ; 17: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 75
	i32 291275502, ; 18: Microsoft.Extensions.Http.dll => 0x115c82ee => 15
	i32 318968648, ; 19: Xamarin.AndroidX.Activity.dll => 0x13031348 => 53
	i32 321597661, ; 20: System.Numerics => 0x132b30dd => 31
	i32 342366114, ; 21: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 79
	i32 385762202, ; 22: System.Memory.dll => 0x16fe439a => 29
	i32 388313361, ; 23: Xamarin.Android.Support.Animated.Vector.Drawable => 0x17253111 => 43
	i32 389971796, ; 24: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 46
	i32 441335492, ; 25: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 65
	i32 442521989, ; 26: Xamarin.Essentials => 0x1a605985 => 105
	i32 450948140, ; 27: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 74
	i32 459124319, ; 28: Microsoft.CognitiveServices.Speech.csharp => 0x1b5dae5f => 9
	i32 465846621, ; 29: mscorlib => 0x1bc4415d => 22
	i32 469710990, ; 30: System.dll => 0x1bff388e => 27
	i32 476646585, ; 31: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 75
	i32 486930444, ; 32: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 86
	i32 513247710, ; 33: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 19
	i32 514659665, ; 34: Xamarin.Android.Support.Compat => 0x1ead1551 => 45
	i32 526420162, ; 35: System.Transactions.dll => 0x1f6088c2 => 113
	i32 539058512, ; 36: Microsoft.Extensions.Logging => 0x20216150 => 17
	i32 548916678, ; 37: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 8
	i32 605376203, ; 38: System.IO.Compression.FileSystem => 0x24154ecb => 117
	i32 627609679, ; 39: Xamarin.AndroidX.CustomView => 0x2568904f => 70
	i32 662205335, ; 40: System.Text.Encodings.Web.dll => 0x27787397 => 36
	i32 663517072, ; 41: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 102
	i32 666292255, ; 42: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 58
	i32 690569205, ; 43: System.Xml.Linq.dll => 0x29293ff5 => 39
	i32 692692150, ; 44: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 44
	i32 725851412, ; 45: I18N.West.dll => 0x2b439d14 => 125
	i32 775189201, ; 46: System.Data.SqlClient.dll => 0x2e3472d1 => 120
	i32 775507847, ; 47: System.IO.Compression => 0x2e394f87 => 116
	i32 789151979, ; 48: Microsoft.Extensions.Options => 0x2f0980eb => 18
	i32 809851609, ; 49: System.Drawing.Common.dll => 0x30455ad9 => 115
	i32 843511501, ; 50: Xamarin.AndroidX.Print => 0x3246f6cd => 93
	i32 889115709, ; 51: dbup-core.dll => 0x34fed43d => 3
	i32 897955953, ; 52: Microsoft.CognitiveServices.Speech.csharp.dll => 0x3585b871 => 9
	i32 928116545, ; 53: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 111
	i32 955402788, ; 54: Newtonsoft.Json => 0x38f24a24 => 23
	i32 958213972, ; 55: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 50
	i32 967690846, ; 56: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 79
	i32 974778368, ; 57: FormsViewGroup.dll => 0x3a19f000 => 5
	i32 1012499000, ; 58: App_Audio_Texto => 0x3c598238 => 2
	i32 1012816738, ; 59: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 95
	i32 1028951442, ; 60: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 14
	i32 1035644815, ; 61: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 57
	i32 1042160112, ; 62: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 108
	i32 1052210849, ; 63: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 83
	i32 1098259244, ; 64: System => 0x41761b2c => 27
	i32 1175058595, ; 65: App_Audio_Texto.Android.dll => 0x4609f8a3 => 0
	i32 1175144683, ; 66: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 100
	i32 1178241025, ; 67: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 90
	i32 1204270330, ; 68: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 58
	i32 1267360935, ; 69: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 101
	i32 1293217323, ; 70: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 72
	i32 1365406463, ; 71: System.ServiceModel.Internals.dll => 0x516272ff => 123
	i32 1376866003, ; 72: Xamarin.AndroidX.SavedState => 0x52114ed3 => 95
	i32 1395857551, ; 73: Xamarin.AndroidX.Media.dll => 0x5333188f => 87
	i32 1406073936, ; 74: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 67
	i32 1411638395, ; 75: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 33
	i32 1445445088, ; 76: Xamarin.Android.Support.Fragment => 0x5627bde0 => 49
	i32 1460219004, ; 77: Xamarin.Forms.Xaml => 0x57092c7c => 109
	i32 1462112819, ; 78: System.IO.Compression.dll => 0x57261233 => 116
	i32 1469204771, ; 79: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 56
	i32 1470490898, ; 80: Microsoft.Extensions.Primitives => 0x57a5e912 => 19
	i32 1505131794, ; 81: Microsoft.Extensions.Http => 0x59b67d12 => 15
	i32 1574652163, ; 82: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 47
	i32 1582372066, ; 83: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 71
	i32 1587447679, ; 84: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 40
	i32 1592978981, ; 85: System.Runtime.Serialization.dll => 0x5ef2ee25 => 35
	i32 1622152042, ; 86: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 85
	i32 1624863272, ; 87: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 104
	i32 1636350590, ; 88: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 69
	i32 1639515021, ; 89: System.Net.Http.dll => 0x61b9038d => 30
	i32 1657153582, ; 90: System.Runtime => 0x62c6282e => 34
	i32 1658241508, ; 91: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 98
	i32 1658251792, ; 92: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 110
	i32 1662014763, ; 93: Xamarin.Android.Support.Vector.Drawable => 0x6310552b => 52
	i32 1670060433, ; 94: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 66
	i32 1729485958, ; 95: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 62
	i32 1766324549, ; 96: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 97
	i32 1770582343, ; 97: Microsoft.Extensions.Logging.dll => 0x6988f147 => 17
	i32 1776026572, ; 98: System.Core.dll => 0x69dc03cc => 26
	i32 1788241197, ; 99: Xamarin.AndroidX.Fragment => 0x6a96652d => 74
	i32 1796167890, ; 100: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 8
	i32 1808609942, ; 101: Xamarin.AndroidX.Loader => 0x6bcd3296 => 85
	i32 1813201214, ; 102: Xamarin.Google.Android.Material => 0x6c13413e => 110
	i32 1818569960, ; 103: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 91
	i32 1828688058, ; 104: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 16
	i32 1867746548, ; 105: Xamarin.Essentials.dll => 0x6f538cf4 => 105
	i32 1878053835, ; 106: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 109
	i32 1885316902, ; 107: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 59
	i32 1914624963, ; 108: System.IdentityModel.dll => 0x721edbc3 => 28
	i32 1919157823, ; 109: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 88
	i32 1968388702, ; 110: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 13
	i32 2011961780, ; 111: System.Buffers.dll => 0x77ec19b4 => 25
	i32 2019465201, ; 112: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 83
	i32 2048278909, ; 113: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 12
	i32 2055257422, ; 114: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 80
	i32 2067863569, ; 115: I18N.dll => 0x7b411811 => 124
	i32 2079903147, ; 116: System.Runtime.dll => 0x7bf8cdab => 34
	i32 2090596640, ; 117: System.Numerics.Vectors => 0x7c9bf920 => 32
	i32 2097448633, ; 118: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 76
	i32 2112493763, ; 119: dbup-core => 0x7dea18c3 => 3
	i32 2126786730, ; 120: Xamarin.Forms.Platform.Android => 0x7ec430aa => 107
	i32 2166116741, ; 121: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 47
	i32 2181898931, ; 122: Microsoft.Extensions.Options.dll => 0x820d22b3 => 18
	i32 2192057212, ; 123: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 16
	i32 2196353150, ; 124: OpenAI_API.dll => 0x82e9b07e => 24
	i32 2201231467, ; 125: System.Net.Http => 0x8334206b => 30
	i32 2217644978, ; 126: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 100
	i32 2244775296, ; 127: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 86
	i32 2256548716, ; 128: Xamarin.AndroidX.MultiDex => 0x8680336c => 88
	i32 2261435625, ; 129: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 78
	i32 2266799131, ; 130: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 11
	i32 2279755925, ; 131: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 94
	i32 2315684594, ; 132: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 54
	i32 2330457430, ; 133: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 46
	i32 2371007202, ; 134: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 13
	i32 2373288475, ; 135: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 49
	i32 2409053734, ; 136: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 92
	i32 2465532216, ; 137: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 65
	i32 2471841756, ; 138: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 139: Java.Interop.dll => 0x93918882 => 6
	i32 2501346920, ; 140: System.Data.DataSetExtensions => 0x95178668 => 114
	i32 2505896520, ; 141: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 82
	i32 2562349572, ; 142: Microsoft.CSharp => 0x98ba5a04 => 10
	i32 2570120770, ; 143: System.Text.Encodings.Web => 0x9930ee42 => 36
	i32 2581274016, ; 144: I18N.West => 0x99db1da0 => 125
	i32 2581819634, ; 145: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 101
	i32 2620871830, ; 146: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 69
	i32 2624644809, ; 147: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 73
	i32 2633051222, ; 148: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 81
	i32 2656447230, ; 149: Microsoft.IdentityModel.Clients.ActiveDirectory.dll => 0x9e562afe => 20
	i32 2701096212, ; 150: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 98
	i32 2732626843, ; 151: Xamarin.AndroidX.Activity => 0xa2e0939b => 53
	i32 2737747696, ; 152: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 56
	i32 2766581644, ; 153: Xamarin.Forms.Core => 0xa4e6af8c => 106
	i32 2775538524, ; 154: dbup-sqlserver.dll => 0xa56f5b5c => 4
	i32 2778768386, ; 155: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 103
	i32 2782647110, ; 156: Xamarin.Android.Support.CustomTabs.dll => 0xa5dbd346 => 48
	i32 2810250172, ; 157: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 67
	i32 2812804954, ; 158: App_Audio_Texto.Android => 0xa7a7ff5a => 0
	i32 2819470561, ; 159: System.Xml.dll => 0xa80db4e1 => 38
	i32 2853208004, ; 160: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 103
	i32 2855708567, ; 161: Xamarin.AndroidX.Transition => 0xaa36a797 => 99
	i32 2903344695, ; 162: System.ComponentModel.Composition => 0xad0d8637 => 118
	i32 2905242038, ; 163: mscorlib.dll => 0xad2a79b6 => 22
	i32 2916838712, ; 164: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 104
	i32 2919462931, ; 165: System.Numerics.Vectors.dll => 0xae037813 => 32
	i32 2921128767, ; 166: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 55
	i32 2922925221, ; 167: Xamarin.Android.Support.Vector.Drawable.dll => 0xae384ca5 => 52
	i32 2978675010, ; 168: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 72
	i32 3024354802, ; 169: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 77
	i32 3044182254, ; 170: FormsViewGroup => 0xb57288ee => 5
	i32 3057625584, ; 171: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 89
	i32 3068715062, ; 172: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 41
	i32 3092211740, ; 173: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 50
	i32 3111772706, ; 174: System.Runtime.Serialization => 0xb979e222 => 35
	i32 3124832203, ; 175: System.Threading.Tasks.Extensions => 0xba4127cb => 121
	i32 3191408315, ; 176: Xamarin.Android.Support.CustomTabs => 0xbe3906bb => 48
	i32 3204380047, ; 177: System.Data.dll => 0xbefef58f => 112
	i32 3211777861, ; 178: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 71
	i32 3247949154, ; 179: Mono.Security => 0xc197c562 => 122
	i32 3253402803, ; 180: System.IdentityModel => 0xc1eafcb3 => 28
	i32 3258312781, ; 181: Xamarin.AndroidX.CardView => 0xc235e84d => 62
	i32 3263703040, ; 182: App_Audio_Texto.dll => 0xc2882800 => 2
	i32 3265893370, ; 183: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 121
	i32 3267021929, ; 184: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 60
	i32 3317135071, ; 185: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 70
	i32 3317144872, ; 186: System.Data => 0xc5b79d28 => 112
	i32 3340431453, ; 187: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 59
	i32 3346324047, ; 188: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 90
	i32 3353484488, ; 189: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 76
	i32 3358191349, ; 190: Microsoft.Azure.Services.AppAuthentication => 0xc829eef5 => 7
	i32 3358260929, ; 191: System.Text.Json => 0xc82afec1 => 37
	i32 3362522851, ; 192: Xamarin.AndroidX.Core => 0xc86c06e3 => 68
	i32 3366347497, ; 193: Java.Interop => 0xc8a662e9 => 6
	i32 3374999561, ; 194: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 94
	i32 3395150330, ; 195: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 33
	i32 3404865022, ; 196: System.ServiceModel.Internals => 0xcaf21dfe => 123
	i32 3408784521, ; 197: dbup-sqlserver => 0xcb2dec89 => 4
	i32 3421170118, ; 198: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 12
	i32 3429136800, ; 199: System.Xml => 0xcc6479a0 => 38
	i32 3430777524, ; 200: netstandard => 0xcc7d82b4 => 1
	i32 3439690031, ; 201: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 44
	i32 3441283291, ; 202: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 73
	i32 3476120550, ; 203: Mono.Android => 0xcf3163e6 => 21
	i32 3485117614, ; 204: System.Text.Json.dll => 0xcfbaacae => 37
	i32 3486566296, ; 205: System.Transactions => 0xcfd0c798 => 113
	i32 3493954962, ; 206: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 64
	i32 3501239056, ; 207: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 60
	i32 3509114376, ; 208: System.Xml.Linq => 0xd128d608 => 39
	i32 3536029504, ; 209: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 107
	i32 3567349600, ; 210: System.ComponentModel.Composition.dll => 0xd4a16f60 => 118
	i32 3579244613, ; 211: I18N => 0xd556f045 => 124
	i32 3618140916, ; 212: Xamarin.AndroidX.Preference => 0xd7a872f4 => 92
	i32 3627220390, ; 213: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 93
	i32 3632359727, ; 214: Xamarin.Forms.Platform => 0xd881692f => 108
	i32 3633644679, ; 215: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 55
	i32 3641597786, ; 216: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 80
	i32 3657292374, ; 217: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 11
	i32 3672681054, ; 218: Mono.Android.dll => 0xdae8aa5e => 21
	i32 3676310014, ; 219: System.Web.Services.dll => 0xdb2009fe => 119
	i32 3678221644, ; 220: Xamarin.Android.Support.v7.AppCompat => 0xdb3d354c => 51
	i32 3681174138, ; 221: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 41
	i32 3682565725, ; 222: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 61
	i32 3684561358, ; 223: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 64
	i32 3689375977, ; 224: System.Drawing.Common => 0xdbe768e9 => 115
	i32 3706221932, ; 225: Microsoft.IdentityModel.Clients.ActiveDirectory => 0xdce8756c => 20
	i32 3712658565, ; 226: OpenAI_API => 0xdd4aac85 => 24
	i32 3718463572, ; 227: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0xdda34054 => 43
	i32 3718780102, ; 228: Xamarin.AndroidX.Annotation => 0xdda814c6 => 54
	i32 3724971120, ; 229: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 89
	i32 3758932259, ; 230: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 78
	i32 3786282454, ; 231: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 63
	i32 3822602673, ; 232: Xamarin.AndroidX.Media => 0xe3d849b1 => 87
	i32 3829621856, ; 233: System.Numerics.dll => 0xe4436460 => 31
	i32 3834665012, ; 234: System.Data.SqlClient => 0xe4905834 => 120
	i32 3841636137, ; 235: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 14
	i32 3862817207, ; 236: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 42
	i32 3874897629, ; 237: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 42
	i32 3883175360, ; 238: Xamarin.Android.Support.v7.AppCompat.dll => 0xe7748dc0 => 51
	i32 3885922214, ; 239: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 99
	i32 3896760992, ; 240: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 68
	i32 3920810846, ; 241: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 117
	i32 3921031405, ; 242: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 102
	i32 3931092270, ; 243: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 91
	i32 3945713374, ; 244: System.Data.DataSetExtensions.dll => 0xeb2ecede => 114
	i32 3955647286, ; 245: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 57
	i32 4025784931, ; 246: System.Memory => 0xeff49a63 => 29
	i32 4105002889, ; 247: Mono.Security.dll => 0xf4ad5f89 => 122
	i32 4151237749, ; 248: System.Core => 0xf76edc75 => 26
	i32 4182413190, ; 249: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 84
	i32 4260525087, ; 250: System.Buffers => 0xfdf2741f => 25
	i32 4292120959 ; 251: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 84
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [252 x i32] [
	i32 82, i32 111, i32 23, i32 106, i32 7, i32 96, i32 96, i32 40, ; 0..7
	i32 63, i32 45, i32 97, i32 61, i32 77, i32 10, i32 119, i32 66, ; 8..15
	i32 81, i32 75, i32 15, i32 53, i32 31, i32 79, i32 29, i32 43, ; 16..23
	i32 46, i32 65, i32 105, i32 74, i32 9, i32 22, i32 27, i32 75, ; 24..31
	i32 86, i32 19, i32 45, i32 113, i32 17, i32 8, i32 117, i32 70, ; 32..39
	i32 36, i32 102, i32 58, i32 39, i32 44, i32 125, i32 120, i32 116, ; 40..47
	i32 18, i32 115, i32 93, i32 3, i32 9, i32 111, i32 23, i32 50, ; 48..55
	i32 79, i32 5, i32 2, i32 95, i32 14, i32 57, i32 108, i32 83, ; 56..63
	i32 27, i32 0, i32 100, i32 90, i32 58, i32 101, i32 72, i32 123, ; 64..71
	i32 95, i32 87, i32 67, i32 33, i32 49, i32 109, i32 116, i32 56, ; 72..79
	i32 19, i32 15, i32 47, i32 71, i32 40, i32 35, i32 85, i32 104, ; 80..87
	i32 69, i32 30, i32 34, i32 98, i32 110, i32 52, i32 66, i32 62, ; 88..95
	i32 97, i32 17, i32 26, i32 74, i32 8, i32 85, i32 110, i32 91, ; 96..103
	i32 16, i32 105, i32 109, i32 59, i32 28, i32 88, i32 13, i32 25, ; 104..111
	i32 83, i32 12, i32 80, i32 124, i32 34, i32 32, i32 76, i32 3, ; 112..119
	i32 107, i32 47, i32 18, i32 16, i32 24, i32 30, i32 100, i32 86, ; 120..127
	i32 88, i32 78, i32 11, i32 94, i32 54, i32 46, i32 13, i32 49, ; 128..135
	i32 92, i32 65, i32 1, i32 6, i32 114, i32 82, i32 10, i32 36, ; 136..143
	i32 125, i32 101, i32 69, i32 73, i32 81, i32 20, i32 98, i32 53, ; 144..151
	i32 56, i32 106, i32 4, i32 103, i32 48, i32 67, i32 0, i32 38, ; 152..159
	i32 103, i32 99, i32 118, i32 22, i32 104, i32 32, i32 55, i32 52, ; 160..167
	i32 72, i32 77, i32 5, i32 89, i32 41, i32 50, i32 35, i32 121, ; 168..175
	i32 48, i32 112, i32 71, i32 122, i32 28, i32 62, i32 2, i32 121, ; 176..183
	i32 60, i32 70, i32 112, i32 59, i32 90, i32 76, i32 7, i32 37, ; 184..191
	i32 68, i32 6, i32 94, i32 33, i32 123, i32 4, i32 12, i32 38, ; 192..199
	i32 1, i32 44, i32 73, i32 21, i32 37, i32 113, i32 64, i32 60, ; 200..207
	i32 39, i32 107, i32 118, i32 124, i32 92, i32 93, i32 108, i32 55, ; 208..215
	i32 80, i32 11, i32 21, i32 119, i32 51, i32 41, i32 61, i32 64, ; 216..223
	i32 115, i32 20, i32 24, i32 43, i32 54, i32 89, i32 78, i32 63, ; 224..231
	i32 87, i32 31, i32 120, i32 14, i32 42, i32 42, i32 51, i32 99, ; 232..239
	i32 68, i32 117, i32 102, i32 91, i32 114, i32 57, i32 29, i32 122, ; 240..247
	i32 26, i32 84, i32 25, i32 84 ; 248..251
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
