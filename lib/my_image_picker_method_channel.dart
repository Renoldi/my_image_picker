// import 'package:flutter/foundation.dart';
// import 'package:flutter/services.dart';

// import 'my_image_picker_platform_interface.dart';

// /// An implementation of [MyImagePickerPlatform] that uses method channels.
// class MethodChannelMyImagePicker extends MyImagePickerPlatform {
//   /// The method channel used to interact with the native platform.
//   @visibleForTesting
//   final methodChannel = const MethodChannel('my_image_picker');

//   @override
//   Future<String?> getPlatformVersion() async {
//     final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
//     return version;
//   }
// }
