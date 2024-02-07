import 'dart:core';

import 'package:colorsoul/values/myColor.dart';
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
  List<bool> isChecked = [false, false];
  List<bool> isSelected = [false, false];

  bool isSubmitEnabled() {
    //  Return true if an image is selected
    return image != null;
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.white,
        leading: Container(
          height: 36,
          width: 36,
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
      body: SizedBox(
        height: height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              InkWell(
                onTap: () async {
                  await _pickerCam();
                },
                child: Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  // margin: const EdgeInsets.all(12),
                  // padding: const EdgeInsets.all(40),
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
                          fit: BoxFit.fill,
                        )
                      : Center(
                          child: Image.asset(
                            'assets/icons/camera.png',
                            height: 70,
                            width: 70,
                            // fit: BoxFit.cov,
                          ),
                        ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              //  Select Place
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
                child: ExpansionTile(
                  tilePadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  childrenPadding: const EdgeInsets.only(
                    left: 14,
                  ),
                  title: Text(
                    'Select Place',
                    style: MyStyle.tx14b.copyWith(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins-Medium',
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_drop_down_sharp,
                    size: 20,
                    color: MyColor.black,
                  ),
                  shape: Border.all(color: Colors.transparent),
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'HQ',
                          style: MyStyle.tx14b.copyWith(
                            fontFamily: 'Roboto-Regular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            activeColor: MyColor.black,
                            value: isChecked[0],
                            onChanged: (bool? val) {
                              setState(() {
                                isChecked[0] = val!;
                              });
                            })
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'EX',
                          style: MyStyle.tx14b.copyWith(
                            fontFamily: 'Roboto-Regular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            activeColor: MyColor.black,
                            value: isChecked[1],
                            onChanged: (bool? val) {
                              setState(() {
                                isChecked[1] = val!;
                              });
                            })
                      ],
                    ),
                  ],
                  onExpansionChanged: (bool expanded) {
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Travel By
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
                child: ExpansionTile(
                  tilePadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  childrenPadding: const EdgeInsets.only(
                    left: 14,
                  ),
                  title: Text(
                    'Travel by',
                    style: MyStyle.tx14b.copyWith(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins-Medium',
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_drop_down_sharp,
                    size: 20,
                    color: MyColor.black,
                  ),
                  shape: Border.all(color: Colors.transparent),
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Personal Vehicle',
                          style: MyStyle.tx14b.copyWith(
                            fontFamily: 'Roboto-Regular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            activeColor: MyColor.black,
                            value: isSelected[0],
                            onChanged: (bool? val) {
                              setState(() {
                                isSelected[0] = val!;
                              });
                            })
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Public Transport',
                          style: MyStyle.tx14b.copyWith(
                            fontFamily: 'Roboto-Regular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            activeColor: MyColor.black,
                            value: isSelected[1],
                            onChanged: (bool? val) {
                              setState(() {
                                isSelected[1] = val!;
                              });
                            })
                      ],
                    ),
                  ],
                  onExpansionChanged: (bool expanded) {
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          color: isSubmitEnabled() ? MyColor.black : MyColor.grey,
          child: Center(
            child: Text(
              'SUBMIT',
              style: MyStyle.tx20b.copyWith(
                color: isSubmitEnabled() ? MyColor.white : MyColor.black,
              ),
            ),
          ),
        ),
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
