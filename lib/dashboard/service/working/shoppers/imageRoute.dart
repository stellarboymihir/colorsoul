import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../values/myColor.dart';
import '../../../../values/myStyle.dart';

class ImageRoute extends StatefulWidget {
  const ImageRoute({super.key});

  @override
  State<ImageRoute> createState() => _ImageRouteState();
}

class _ImageRouteState extends State<ImageRoute> {
  List<XFile> images = [];

  // final List<Map<String, dynamic>> imageList = [
  //   {"image": 'assets/images/img4.png'},
  //   {"image": 'assets/images/img5.png'},
  //   {"image": 'assets/images/img6.png'},
  //   {"image": 'assets/images/img7.png'},
  //   {"image": 'assets/images/img8.png'},
  //   {"image": 'assets/images/img9.png'},
  // ];
  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: MyColor.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 36,
            width: 36,
            margin: const EdgeInsets.fromLTRB(15, 12, 8, 12),
            color: MyColor.grey,
            child: const Center(
                child: Icon(
              Icons.arrow_back_ios_new,
              size: 16,
            )),
          ),
        ),
        title: const Text(
          'Image',
          style: MyStyle.tx16b,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: Column(
          children: [
            InkWell(
              onTap: () async {
                await _pickerCam();
              },
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/icons/camera.png',
                    height: 60,
                    width: 60,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SizedBox(
                // height: 100,
                // width: 335,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 12.0,
                      childAspectRatio: 0.9,
                      mainAxisSpacing: 12.0),
                  itemCount: images.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.file(
                        File(images[index].path),
                        fit: BoxFit.fill,
                        // width: 114,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.fromLTRB(15, 0, 15, 20),
          color: MyColor.black,
          child: Center(
            child: Text(
              'DONE',
              style: MyStyle.tx20W.copyWith(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _pickerCam() async {
    try {
      final pickedImages = await ImagePicker().pickMultiImage();
      if (pickedImages == null) return;
      setState(() {
        images.addAll(pickedImages);
        // Navigator.pop(context);
      });
    } on PlatformException catch (e) {
      print('Failed to pick Image: $e');
    }
  }
}
