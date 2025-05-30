import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_image_picker/my_image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class CustomBuilderExample extends StatefulWidget {
  const CustomBuilderExample({
    super.key,
    required this.title,
    required this.drawer,
  });
  final String title;
  final Drawer Function(BuildContext context) drawer;

  @override
  State<CustomBuilderExample> createState() => _CustomBuilderExampleState();
}

class _CustomBuilderExampleState extends State<CustomBuilderExample> {
  ImagePickerController controller = ImagePickerController();

  //dummy data

  @override
  void initState() {
    super.initState();
    Permission.camera.request();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      drawer: widget.drawer(context),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ImagePickerComponent(
              isDirectUpload: true,
              uploadUrl:
                  'https://api.inovatrack.com/driver-test/api/Driver/UploadProfilePicture',
              token:
                  "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9zaWQiOiIyOTI5NiIsIlVzZXJJZCI6IjI5Mjk2IiwiVXNlck5hbWUiOiJkcml2ZXItMSIsIlVzZXJGdWxsTmFtZSI6IlRlc3QgRHJpdmVyIDEiLCJNZW1iZXJJZCI6IjY2ODA1NiIsIk1lbWJlckNvZGUiOiJFTkVSUkVOIiwiTWVtYmVyTmFtZSI6IkVORVJSRU4gVEVDSE5PTE9HSUVTLiBQVCIsIm5iZiI6MTc0NDI1NjMzMywiZXhwIjoxNzQ0ODYxMTMzLCJpYXQiOjE3NDQyNTYzMzN9.G6_8CnVBoTi5u7XTBhnDLg9gbrZWWPWLCJIcO_1LbDQ",
              controller: controller,
              showDescription: false,
              container: (ctx, value) {
                return Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            value.base64 != null
                                ? MemoryImage(
                                  base64Decode(value.base64!.split(',').last),
                                )
                                : Image.asset('assets/avatar.png').image,
                      ),
                    ),
                    Align(alignment: Alignment.center, child: ctx(context)),
                  ],
                );
              },
              onChange: (value) {},
              containerHeight: 100,
              containerWidth: 100,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: const Text("Read"),
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {
                controller.clear();
              },
              child: const Text("Clear"),
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
