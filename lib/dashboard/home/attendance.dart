import 'dart:core';

import 'package:colorsoul/values/myColor.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../../values/myStyle.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  String? selectedList;
  File? image;
  final List<Map<String, dynamic>> placeList = [
    {'text': 'HQ', 'isSelected': false},
    {'text': 'EX', 'isSelected': false},
  ];

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
          'Attendance',
          style: MyStyle.tx16b,
        ),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () async {
              await _pickerCam();
            },
            child: Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                border: Border.all(
                  color: MyColor.grey,
                ),
              ),
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
            height: 55,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(
                color: MyColor.grey,
              ),
            ),
            child: DropdownButtonFormField2<Map<String, dynamic>>(
              style: MyStyle.tx14b.copyWith(
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1),
                  borderSide: const BorderSide(
                    color: MyColor.black,
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
                hintText: 'Select Place',
                hintStyle: MyStyle.tx14b.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              value: selectedList != null
                  ? placeList.firstWhere((item) => item['text'] == selectedList)
                  : null,
              isExpanded: true,
              onChanged: (Map<String, dynamic>? value) {
                print(value);
                if (value != null) {
                  setState(() {
                    selectedList = null;
                    selectedList = value['text'];
                  });
                }
              },
// dropdownColor: MyColor.black.withOpacity(0.25),
              items: placeList
                  .map<DropdownMenuItem<Map<String, dynamic>>>((placeItem) {
                print(placeItem);
                return DropdownMenuItem<Map<String, dynamic>>(
                  value: placeItem,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        placeItem['text'],
                        style: MyStyle.tx12b.copyWith(
                          color: MyColor.black,
                        ),
                      ),
                      Checkbox(
                          value: placeItem['isSelected'],
                          onChanged: (bool? newValue) {
                            setState(() {
                              placeItem['isSelected'] = newValue ?? false;
                            });
                          }),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
//           DropdownButtonFormField2<String>(
//             style: MyStyle.tx14b.copyWith(
//               fontWeight: FontWeight.w400,
//             ),
//             decoration: InputDecoration(
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(1),
//                 borderSide: const BorderSide(
//                   color: MyColor.black,
//                 ),
//               ),
//               contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
//               hintText: 'Select Place',
//               hintStyle: MyStyle.tx14b.copyWith(
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//             value: selectedList,
//             isExpanded: true,
//             onChanged: (String? value) {
//               print(value);
//               setState(() {
//                 selectedList = null;
//                 selectedList = value!;
//               });
//             },
// // dropdownColor: MyColor.black.withOpacity(0.25),
//             items: placeList.map<DropdownMenuItem<String>>((list) {
//               print(list);
//               return DropdownMenuItem<String>(
//                 value: list,
//                 child: Text(
//                   list,
//                   style: MyStyle.tx12b.copyWith(
//                     color: MyColor.black,
//                   ),
//                 ),
//               );
//             }).toList(),
//           ),
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
