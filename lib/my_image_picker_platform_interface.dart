// import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// import 'my_image_picker_method_channel.dart';

// abstract class MyImagePickerPlatform extends PlatformInterface {
//   /// Constructs a MyImagePickerPlatform.
//   MyImagePickerPlatform() : super(token: _token);

//   static final Object _token = Object();

//   static MyImagePickerPlatform _instance = MethodChannelMyImagePicker();

//   /// The default instance of [MyImagePickerPlatform] to use.
//   ///
//   /// Defaults to [MethodChannelMyImagePicker].
//   static MyImagePickerPlatform get instance => _instance;

//   /// Platform-specific implementations should set this with their own
//   /// platform-specific class that extends [MyImagePickerPlatform] when
//   /// they register themselves.
//   static set instance(MyImagePickerPlatform instance) {
//     PlatformInterface.verifyToken(instance, _token);
//     _instance = instance;
//   }

//   Future<String?> getPlatformVersion() {
//     throw UnimplementedError('platformVersion() has not been implemented.');
//   }
// }
