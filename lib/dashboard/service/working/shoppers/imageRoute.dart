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
  final List<Map<String, dynamic>> imageList = [
    {"image": 'assets/images/img4.png'},
    {"image": 'assets/images/img5.png'},
    {"image": 'assets/images/img6.png'},
    {"image": 'assets/images/img7.png'},
    {"image": 'assets/images/img8.png'},
    {"image": 'assets/images/img9.png'},
  ];
  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.white,
        leading: Container(
          height: 40,
          width: 40,
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.all(12),
          color: MyColor.grey,
          child: const Center(
              child: Icon(
            Icons.arrow_back_ios_new,
            size: 16,
          )),
        ),
        title: const Text(
          'Image',
          style: MyStyle.tx16b,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 180,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            padding: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              border: Border.all(
                color: MyColor.grey,
              ),
            ),
            child: InkWell(
              onTap: () async {
                await _pickerCam();
              },
              child: image != null
                  ? Image.file(
                      image!,
                      height: 54,
                      width: 54,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      'assets/icons/camera.png',
                      height: 54,
                      width: 54,
                    ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/img4.png',
                    height: 114,
                    width: 114,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/img5.png',
                    height: 114,
                    width: 114,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/img6.png',
                    height: 114,
                    width: 114,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/img7.png',
                    height: 114,
                    width: 114,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/img8.png',
                    height: 114,
                    width: 114,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/img9.png',
                    height: 114,
                    width: 114,
                  ),
                ),
              ],
            ),
          ),
          // GridView.builder(
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 3,
          //       crossAxisSpacing: 4.0,
          //       childAspectRatio: 0.9,
          //       mainAxisSpacing: 4.0),
          //   itemCount: imageList.length,
          //   itemBuilder: (BuildContext ctx, index) {
          //     return Container(
          //       height: 114,
          //       width: 114,
          //       decoration: const BoxDecoration(
          //         shape: BoxShape.circle,
          //       ),
          //       child: Image.asset(
          //         '${imageList[index]["image"]}',
          //         fit: BoxFit.fill,
          //         height: 114,
          //         width: 114,
          //       ),
          //     );
          //   },
          // ),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 65,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(12),
              color: MyColor.black,
              child: Center(
                child: Text(
                  'DONE',
                  style: MyStyle.tx20W,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Future<void> _pickerCam() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
        // Navigator.pop(context);
      });
    } on PlatformException catch (e) {
      print('Failed to pick Image: $e');
    }
  }
}
