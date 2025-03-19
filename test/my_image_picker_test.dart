// import 'package:flutter_test/flutter_test.dart';
// import 'package:my_image_picker/my_image_picker.dart';
// import 'package:my_image_picker/my_image_picker_platform_interface.dart';
// import 'package:my_image_picker/my_image_picker_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// class MockMyImagePickerPlatform
//     with MockPlatformInterfaceMixin
//     implements MyImagePickerPlatform {

//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }

// void main() {
//   final MyImagePickerPlatform initialPlatform = MyImagePickerPlatform.instance;

//   test('$MethodChannelMyImagePicker is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelMyImagePicker>());
//   });

//   test('getPlatformVersion', () async {
//     MyImagePicker myImagePickerPlugin = MyImagePicker();
//     MockMyImagePickerPlatform fakePlatform = MockMyImagePickerPlatform();
//     MyImagePickerPlatform.instance = fakePlatform;

//     expect(await myImagePickerPlugin.getPlatformVersion(), '42');
//   });
// }
