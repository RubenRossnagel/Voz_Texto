; ModuleID = 'obj\Debug\120\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\120\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [252 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 73
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 19
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 21
	i64 156291772854606065, ; 3: I18N.West => 0x22b428a125098f1 => 125
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 63
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 95
	i64 295915112840604065, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 96
	i64 429920985020197910, ; 7: App_Audio_Texto.Android.dll => 0x5f762dba99d6c16 => 0
	i64 634308326490598313, ; 8: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 82
	i64 668723562677762733, ; 9: Microsoft.Extensions.Configuration.Binder.dll => 0x947c88986577aad => 12
	i64 702024105029695270, ; 10: System.Drawing.Common => 0x9be17343c0e7726 => 115
	i64 720058930071658100, ; 11: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 76
	i64 872800313462103108, ; 12: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 72
	i64 940822596282819491, ; 13: System.Transactions => 0xd0e792aa81923a3 => 113
	i64 996343623809489702, ; 14: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 108
	i64 1000557547492888992, ; 15: Mono.Security.dll => 0xde2b1c9cba651a0 => 122
	i64 1120440138749646132, ; 16: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 110
	i64 1257360954141526196, ; 17: dbup-core => 0x11730b20420d48b4 => 3
	i64 1315114680217950157, ; 18: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 58
	i64 1342439039765371018, ; 19: Xamarin.Android.Support.Fragment => 0x12a14d31b1d4d88a => 49
	i64 1425944114962822056, ; 20: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 35
	i64 1624659445732251991, ; 21: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 56
	i64 1628611045998245443, ; 22: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 84
	i64 1636321030536304333, ; 23: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 77
	i64 1731380447121279447, ; 24: Newtonsoft.Json => 0x18071957e9b889d7 => 23
	i64 1743969030606105336, ; 25: System.Memory.dll => 0x1833d297e88f2af8 => 29
	i64 1744702963312407042, ; 26: Xamarin.Android.Support.v7.AppCompat => 0x18366e19eeceb202 => 51
	i64 1783757343580445821, ; 27: System.IdentityModel.dll => 0x18c12dda6d9b5c7d => 28
	i64 1795316252682057001, ; 28: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 57
	i64 1836611346387731153, ; 29: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 95
	i64 1865037103900624886, ; 30: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 8
	i64 1875917498431009007, ; 31: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 54
	i64 1981742497975770890, ; 32: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 83
	i64 2040001226662520565, ; 33: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 121
	i64 2133195048986300728, ; 34: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 23
	i64 2136356949452311481, ; 35: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 88
	i64 2165725771938924357, ; 36: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 61
	i64 2183779145535666766, ; 37: Microsoft.CognitiveServices.Speech.csharp => 0x1e4e57900d8f3a4e => 9
	i64 2262844636196693701, ; 38: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 72
	i64 2284400282711631002, ; 39: System.Web.Services => 0x1fb3d1f42fd4249a => 119
	i64 2329709569556905518, ; 40: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 80
	i64 2335503487726329082, ; 41: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 36
	i64 2337758774805907496, ; 42: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 33
	i64 2470498323731680442, ; 43: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 67
	i64 2479423007379663237, ; 44: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 100
	i64 2497223385847772520, ; 45: System.Runtime => 0x22a7eb7046413568 => 34
	i64 2522657795076679771, ; 46: Microsoft.IdentityModel.Clients.ActiveDirectory => 0x230247e6256a685b => 20
	i64 2547086958574651984, ; 47: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 53
	i64 2592350477072141967, ; 48: System.Xml.dll => 0x23f9e10627330e8f => 38
	i64 2624866290265602282, ; 49: mscorlib.dll => 0x246d65fbde2db8ea => 22
	i64 2694427813909235223, ; 50: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 92
	i64 2783046991838674048, ; 51: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 33
	i64 2957149342867750951, ; 52: OpenAI_API.dll => 0x2909e7a8e1698027 => 24
	i64 2960931600190307745, ; 53: Xamarin.Forms.Core => 0x2917579a49927da1 => 106
	i64 3017704767998173186, ; 54: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 110
	i64 3022227708164871115, ; 55: Xamarin.Android.Support.Media.Compat.dll => 0x29f11c168f8293cb => 50
	i64 3289520064315143713, ; 56: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 79
	i64 3303437397778967116, ; 57: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 55
	i64 3311221304742556517, ; 58: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 32
	i64 3493805808809882663, ; 59: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 98
	i64 3494946837667399002, ; 60: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 13
	i64 3520516650757548319, ; 61: dbup-sqlserver => 0x30db633dca40691f => 4
	i64 3522470458906976663, ; 62: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 97
	i64 3531994851595924923, ; 63: System.Numerics => 0x31042a9aade235bb => 31
	i64 3571415421602489686, ; 64: System.Runtime.dll => 0x319037675df7e556 => 34
	i64 3572576518857361216, ; 65: I18N => 0x3194576a63650740 => 124
	i64 3638003163729360188, ; 66: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 11
	i64 3655542548057982301, ; 67: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 13
	i64 3716579019761409177, ; 68: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 69: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 94
	i64 3772598417116884899, ; 70: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 73
	i64 3869221888984012293, ; 71: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 17
	i64 3966267475168208030, ; 72: System.Memory => 0x370b03412596249e => 29
	i64 4525561845656915374, ; 73: System.ServiceModel.Internals => 0x3ece06856b710dae => 123
	i64 4620536241703500132, ; 74: System.Data.SqlClient.dll => 0x401f713b2e8e3964 => 120
	i64 4636684751163556186, ; 75: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 102
	i64 4657212095206026001, ; 76: Microsoft.Extensions.Http.dll => 0x40a1bdb9c2686b11 => 15
	i64 4782108999019072045, ; 77: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 60
	i64 4794310189461587505, ; 78: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 53
	i64 4795410492532947900, ; 79: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 97
	i64 5142919913060024034, ; 80: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 107
	i64 5203618020066742981, ; 81: Xamarin.Essentials => 0x4836f704f0e652c5 => 105
	i64 5205316157927637098, ; 82: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 86
	i64 5266851800019912408, ; 83: System.Data.SqlClient => 0x49179dcea0d046d8 => 120
	i64 5348796042099802469, ; 84: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 87
	i64 5376510917114486089, ; 85: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 100
	i64 5398069113008343190, ; 86: I18N.West.dll => 0x4ae9cb4211dec896 => 125
	i64 5408338804355907810, ; 87: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 99
	i64 5439315836349573567, ; 88: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0x4b7c54ef36c5e9bf => 43
	i64 5451019430259338467, ; 89: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 66
	i64 5507995362134886206, ; 90: System.Core.dll => 0x4c705499688c873e => 26
	i64 5692067934154308417, ; 91: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 104
	i64 5757522595884336624, ; 92: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 64
	i64 5767696078500135884, ; 93: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 44
	i64 5814345312393086621, ; 94: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 92
	i64 5896680224035167651, ; 95: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 81
	i64 6085203216496545422, ; 96: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 108
	i64 6086316965293125504, ; 97: FormsViewGroup.dll => 0x5476f10882baef80 => 5
	i64 6222399776351216807, ; 98: System.Text.Json.dll => 0x565a67a0ffe264a7 => 37
	i64 6319713645133255417, ; 99: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 82
	i64 6401687960814735282, ; 100: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 80
	i64 6405879832841858445, ; 101: Xamarin.Android.Support.Vector.Drawable.dll => 0x58e641c4a660ad8d => 52
	i64 6504860066809920875, ; 102: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 61
	i64 6548213210057960872, ; 103: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 70
	i64 6560151584539558821, ; 104: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 18
	i64 6574745649279418477, ; 105: Microsoft.IdentityModel.Clients.ActiveDirectory.dll => 0x5b3e305561d8406d => 20
	i64 6591024623626361694, ; 106: System.Web.Services.dll => 0x5b7805f9751a1b5e => 119
	i64 6659513131007730089, ; 107: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 76
	i64 6876862101832370452, ; 108: System.Xml.Linq => 0x5f6f85a57d108914 => 39
	i64 6894844156784520562, ; 109: System.Numerics.Vectors => 0x5faf683aead1ad72 => 32
	i64 7036436454368433159, ; 110: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 78
	i64 7095968005899302008, ; 111: Microsoft.CognitiveServices.Speech.csharp.dll => 0x6279f14e292a3478 => 9
	i64 7103753931438454322, ; 112: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 75
	i64 7488575175965059935, ; 113: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 39
	i64 7635363394907363464, ; 114: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 106
	i64 7637365915383206639, ; 115: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 105
	i64 7654504624184590948, ; 116: System.Net.Http => 0x6a3a4366801b8264 => 30
	i64 7735176074855944702, ; 117: Microsoft.CSharp => 0x6b58dda848e391fe => 10
	i64 7820441508502274321, ; 118: System.Data => 0x6c87ca1e14ff8111 => 112
	i64 7836164640616011524, ; 119: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 56
	i64 7879037620440914030, ; 120: Xamarin.Android.Support.v7.AppCompat.dll => 0x6d57f6f88a51d86e => 51
	i64 7885946024416048948, ; 121: App_Audio_Texto.Android => 0x6d708220af38f734 => 0
	i64 8044118961405839122, ; 122: System.ComponentModel.Composition => 0x6fa2739369944712 => 118
	i64 8083354569033831015, ; 123: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 79
	i64 8101777744205214367, ; 124: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 44
	i64 8103644804370223335, ; 125: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 114
	i64 8167236081217502503, ; 126: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 6
	i64 8236765491214281425, ; 127: dbup-core.dll => 0x724ede92f205ead1 => 3
	i64 8265650852517415196, ; 128: I18N.dll => 0x72b57da835b4891c => 124
	i64 8385935383968044654, ; 129: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0x7460d3cd16cb566e => 42
	i64 8398329775253868912, ; 130: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 65
	i64 8400357532724379117, ; 131: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 91
	i64 8601935802264776013, ; 132: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 99
	i64 8626175481042262068, ; 133: Java.Interop => 0x77b654e585b55834 => 6
	i64 8638972117149407195, ; 134: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 10
	i64 8639588376636138208, ; 135: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 90
	i64 8684531736582871431, ; 136: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 117
	i64 8796457469147618732, ; 137: Xamarin.Android.Support.CustomTabs => 0x7a134b766a601dac => 48
	i64 9312692141327339315, ; 138: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 104
	i64 9324707631942237306, ; 139: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 57
	i64 9662334977499516867, ; 140: System.Numerics.dll => 0x8617827802b0cfc3 => 31
	i64 9678050649315576968, ; 141: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 67
	i64 9711637524876806384, ; 142: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 87
	i64 9808709177481450983, ; 143: Mono.Android.dll => 0x881f890734e555e7 => 21
	i64 9825649861376906464, ; 144: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 64
	i64 9834056768316610435, ; 145: System.Transactions.dll => 0x8879968718899783 => 113
	i64 9866412715007501892, ; 146: Xamarin.Android.Arch.Lifecycle.Common.dll => 0x88ec8a16fd6b6644 => 41
	i64 9998632235833408227, ; 147: Mono.Security => 0x8ac2470b209ebae3 => 122
	i64 10038780035334861115, ; 148: System.Net.Http.dll => 0x8b50e941206af13b => 30
	i64 10205853378024263619, ; 149: Microsoft.Extensions.Configuration.Binder => 0x8da279930adb4fc3 => 12
	i64 10229024438826829339, ; 150: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 70
	i64 10376576884623852283, ; 151: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 98
	i64 10430153318873392755, ; 152: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 68
	i64 10447083246144586668, ; 153: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 8
	i64 10847732767863316357, ; 154: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 58
	i64 10850923258212604222, ; 155: Xamarin.Android.Arch.Lifecycle.Runtime => 0x9696393672c9593e => 42
	i64 10860799559685369369, ; 156: dbup-sqlserver.dll => 0x96b94fa813c3ee19 => 4
	i64 10913891249535884439, ; 157: Xamarin.Android.Support.CustomTabs.dll => 0x9775ee4465d49c97 => 48
	i64 11002576679268595294, ; 158: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 16
	i64 11023048688141570732, ; 159: System.Core => 0x98f9bc61168392ac => 26
	i64 11037814507248023548, ; 160: System.Xml => 0x992e31d0412bf7fc => 38
	i64 11162124722117608902, ; 161: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 103
	i64 11226290749488709958, ; 162: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 18
	i64 11340910727871153756, ; 163: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 69
	i64 11376461258732682436, ; 164: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 45
	i64 11392833485892708388, ; 165: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 93
	i64 11529969570048099689, ; 166: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 103
	i64 11530571088791430846, ; 167: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 17
	i64 11578238080964724296, ; 168: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 78
	i64 11580057168383206117, ; 169: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 54
	i64 11597940890313164233, ; 170: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 171: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 75
	i64 12102847907131387746, ; 172: System.Buffers => 0xa7f5f40c43256f62 => 25
	i64 12137774235383566651, ; 173: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 101
	i64 12145679461940342714, ; 174: System.Text.Json => 0xa88e1f1ebcb62fba => 37
	i64 12414299427252656003, ; 175: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 45
	i64 12451044538927396471, ; 176: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 74
	i64 12466513435562512481, ; 177: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 85
	i64 12487638416075308985, ; 178: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 71
	i64 12538491095302438457, ; 179: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 62
	i64 12550732019250633519, ; 180: System.IO.Compression => 0xae2d28465e8e1b2f => 116
	i64 12700543734426720211, ; 181: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 63
	i64 12843321153144804894, ; 182: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 19
	i64 12952608645614506925, ; 183: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 47
	i64 12963446364377008305, ; 184: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 115
	i64 13358059602087096138, ; 185: Xamarin.Android.Support.Fragment.dll => 0xb9615c6f1ee5af4a => 49
	i64 13370592475155966277, ; 186: System.Runtime.Serialization => 0xb98de304062ea945 => 35
	i64 13401370062847626945, ; 187: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 101
	i64 13404347523447273790, ; 188: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 65
	i64 13454009404024712428, ; 189: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 111
	i64 13491513212026656886, ; 190: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 59
	i64 13572454107664307259, ; 191: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 94
	i64 13647894001087880694, ; 192: System.Data.dll => 0xbd670f48cb071df6 => 112
	i64 13959074834287824816, ; 193: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 74
	i64 13967638549803255703, ; 194: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 107
	i64 14124974489674258913, ; 195: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 62
	i64 14172845254133543601, ; 196: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 88
	i64 14261073672896646636, ; 197: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 93
	i64 14369828458497533121, ; 198: Xamarin.Android.Support.Vector.Drawable => 0xc76be2d9300b64c1 => 52
	i64 14400856865250966808, ; 199: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 46
	i64 14486659737292545672, ; 200: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 81
	i64 14551742072151931844, ; 201: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 36
	i64 14644440854989303794, ; 202: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 86
	i64 14770036310768355310, ; 203: Microsoft.Azure.Services.AppAuthentication => 0xccf9b5c506f807ee => 7
	i64 14792063746108907174, ; 204: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 111
	i64 14852515768018889994, ; 205: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 69
	i64 14922390360333830815, ; 206: OpenAI_API => 0xcf16faf873694a9f => 24
	i64 14954917835170835695, ; 207: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 14
	i64 14987728460634540364, ; 208: System.IO.Compression.dll => 0xcfff1ba06622494c => 116
	i64 14988210264188246988, ; 209: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 71
	i64 15136253973786843953, ; 210: System.IdentityModel => 0xd20ec6cb39a8db31 => 28
	i64 15188640517174936311, ; 211: Xamarin.Android.Arch.Core.Common => 0xd2c8e413d75142f7 => 40
	i64 15227001540531775957, ; 212: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 11
	i64 15246441518555807158, ; 213: Xamarin.Android.Arch.Core.Common.dll => 0xd3963dc832493db6 => 40
	i64 15350554229955894417, ; 214: App_Audio_Texto.dll => 0xd5081fbdcde41c91 => 2
	i64 15370334346939861994, ; 215: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 68
	i64 15391712275433856905, ; 216: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 14
	i64 15457813392950723921, ; 217: Xamarin.Android.Support.Media.Compat => 0xd6852f61c31a8551 => 50
	i64 15582737692548360875, ; 218: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 84
	i64 15609085926864131306, ; 219: System.dll => 0xd89e9cf3334914ea => 27
	i64 15777549416145007739, ; 220: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 96
	i64 15810740023422282496, ; 221: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 109
	i64 15841161113133006081, ; 222: Microsoft.Azure.Services.AppAuthentication.dll => 0xdbd71c1a32063d01 => 7
	i64 15963349826457351533, ; 223: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 121
	i64 16154507427712707110, ; 224: System => 0xe03056ea4e39aa26 => 27
	i64 16321164108206115771, ; 225: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 16
	i64 16558262036769511634, ; 226: Microsoft.Extensions.Http => 0xe5cac397cf7b98d2 => 15
	i64 16565028646146589191, ; 227: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 118
	i64 16621146507174665210, ; 228: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 66
	i64 16677317093839702854, ; 229: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 91
	i64 16822611501064131242, ; 230: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 114
	i64 16833383113903931215, ; 231: mscorlib => 0xe99c30c1484d7f4f => 22
	i64 16932527889823454152, ; 232: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 47
	i64 17009591894298689098, ; 233: Xamarin.Android.Support.Animated.Vector.Drawable => 0xec0e35b50a097e4a => 43
	i64 17024911836938395553, ; 234: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 55
	i64 17031351772568316411, ; 235: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 89
	i64 17037200463775726619, ; 236: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 77
	i64 17059116693297041267, ; 237: App_Audio_Texto => 0xecbe283fdde80f73 => 2
	i64 17428701562824544279, ; 238: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 46
	i64 17544493274320527064, ; 239: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 60
	i64 17704177640604968747, ; 240: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 85
	i64 17710060891934109755, ; 241: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 83
	i64 17760961058993581169, ; 242: Xamarin.Android.Arch.Lifecycle.Common => 0xf67b9bfb46dbac71 => 41
	i64 17838668724098252521, ; 243: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 25
	i64 17882897186074144999, ; 244: FormsViewGroup => 0xf82cd03e3ac830e7 => 5
	i64 17892495832318972303, ; 245: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 109
	i64 17928294245072900555, ; 246: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 117
	i64 18116111925905154859, ; 247: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 59
	i64 18121036031235206392, ; 248: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 89
	i64 18129453464017766560, ; 249: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 123
	i64 18305135509493619199, ; 250: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 90
	i64 18380184030268848184 ; 251: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 102
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [252 x i32] [
	i32 73, i32 19, i32 21, i32 125, i32 63, i32 95, i32 96, i32 0, ; 0..7
	i32 82, i32 12, i32 115, i32 76, i32 72, i32 113, i32 108, i32 122, ; 8..15
	i32 110, i32 3, i32 58, i32 49, i32 35, i32 56, i32 84, i32 77, ; 16..23
	i32 23, i32 29, i32 51, i32 28, i32 57, i32 95, i32 8, i32 54, ; 24..31
	i32 83, i32 121, i32 23, i32 88, i32 61, i32 9, i32 72, i32 119, ; 32..39
	i32 80, i32 36, i32 33, i32 67, i32 100, i32 34, i32 20, i32 53, ; 40..47
	i32 38, i32 22, i32 92, i32 33, i32 24, i32 106, i32 110, i32 50, ; 48..55
	i32 79, i32 55, i32 32, i32 98, i32 13, i32 4, i32 97, i32 31, ; 56..63
	i32 34, i32 124, i32 11, i32 13, i32 1, i32 94, i32 73, i32 17, ; 64..71
	i32 29, i32 123, i32 120, i32 102, i32 15, i32 60, i32 53, i32 97, ; 72..79
	i32 107, i32 105, i32 86, i32 120, i32 87, i32 100, i32 125, i32 99, ; 80..87
	i32 43, i32 66, i32 26, i32 104, i32 64, i32 44, i32 92, i32 81, ; 88..95
	i32 108, i32 5, i32 37, i32 82, i32 80, i32 52, i32 61, i32 70, ; 96..103
	i32 18, i32 20, i32 119, i32 76, i32 39, i32 32, i32 78, i32 9, ; 104..111
	i32 75, i32 39, i32 106, i32 105, i32 30, i32 10, i32 112, i32 56, ; 112..119
	i32 51, i32 0, i32 118, i32 79, i32 44, i32 114, i32 6, i32 3, ; 120..127
	i32 124, i32 42, i32 65, i32 91, i32 99, i32 6, i32 10, i32 90, ; 128..135
	i32 117, i32 48, i32 104, i32 57, i32 31, i32 67, i32 87, i32 21, ; 136..143
	i32 64, i32 113, i32 41, i32 122, i32 30, i32 12, i32 70, i32 98, ; 144..151
	i32 68, i32 8, i32 58, i32 42, i32 4, i32 48, i32 16, i32 26, ; 152..159
	i32 38, i32 103, i32 18, i32 69, i32 45, i32 93, i32 103, i32 17, ; 160..167
	i32 78, i32 54, i32 1, i32 75, i32 25, i32 101, i32 37, i32 45, ; 168..175
	i32 74, i32 85, i32 71, i32 62, i32 116, i32 63, i32 19, i32 47, ; 176..183
	i32 115, i32 49, i32 35, i32 101, i32 65, i32 111, i32 59, i32 94, ; 184..191
	i32 112, i32 74, i32 107, i32 62, i32 88, i32 93, i32 52, i32 46, ; 192..199
	i32 81, i32 36, i32 86, i32 7, i32 111, i32 69, i32 24, i32 14, ; 200..207
	i32 116, i32 71, i32 28, i32 40, i32 11, i32 40, i32 2, i32 68, ; 208..215
	i32 14, i32 50, i32 84, i32 27, i32 96, i32 109, i32 7, i32 121, ; 216..223
	i32 27, i32 16, i32 15, i32 118, i32 66, i32 91, i32 114, i32 22, ; 224..231
	i32 47, i32 43, i32 55, i32 89, i32 77, i32 2, i32 46, i32 60, ; 232..239
	i32 85, i32 83, i32 41, i32 25, i32 5, i32 109, i32 117, i32 59, ; 240..247
	i32 89, i32 123, i32 90, i32 102 ; 248..251
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
