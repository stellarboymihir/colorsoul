import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../../values/myColor.dart';
import '../../../values/myStyle.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  List<XFile> images = [];

  File? image;
  TextEditingController titleController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController attachController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
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
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.all(12),
            color: MyColor.grey,
            child: const Center(
                child: Icon(
              Icons.arrow_back_ios_new,
              size: 16,
            )),
          ),
        ),
        title: const Text(
          ' CREATE NEW TASK',
          style: MyStyle.tx16b,
        ),
      ),
      body: SizedBox(
        height: height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //   Title
                Text(
                  'Title',
                  style: MyStyle.tx14b.copyWith(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto-Medium',
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    controller: titleController,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.grey,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.grey,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                //   Note
                Text(
                  'Note',
                  style: MyStyle.tx14b.copyWith(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto-Medium',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    controller: noteController,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.grey,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.grey,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                //  Date
                Text(
                  'Date',
                  style: MyStyle.tx14b.copyWith(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto-Medium',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    controller: dateController,
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image.asset(
                          'assets/icons/calendar.png',
                          height: 5,
                          width: 5,
                          fit: BoxFit.fill,
                        ),
                      ),
                      // isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        // vertical: 20,
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.grey,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.grey,
                        ),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.grey,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.datetime,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                //  Attachment
                Text(
                  'Attachment',
                  style: MyStyle.tx14b.copyWith(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto-Medium',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    controller: attachController,
                    decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            'assets/icons/paper.png',
                            height: 15,
                            width: 15,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      // isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        // vertical: 20,
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.grey,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.grey,
                        ),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.grey,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                // Description
                Text(
                  'Description',
                  style: MyStyle.tx14b.copyWith(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto-Medium',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    controller: descriptionController,
                    decoration: const InputDecoration(
                      // isDense: true,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.grey,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.grey,
                        ),
                      ),
                    ),
                    maxLines: 3,
                    keyboardType: TextInputType.text,
                  ),
                ),

                //   Add Team Member
                Text(
                  'Add Team Member',
                  style: MyStyle.tx14b.copyWith(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto-Medium',
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () async {
                        await _pickerCam();
                      },
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          border: Border.all(
                            color: MyColor.grey,
                          ),
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 26,
                          color: MyColor.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 55,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: images.length,
                            itemBuilder: ((context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Image.file(
                                  File(images[index].path),
                                  height: 55,
                                  width: 55,
                                  fit: BoxFit.fill,
                                ),
                              );
                            })),
                      ),
                    )
                    // const SizedBox(
                    //   width: 10,
                    // ),
                    // Container(
                    //   height: 55,
                    //   width: 60,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(0),
                    //     border: Border.all(
                    //       color: MyColor.grey,
                    //     ),
                    //   ),
                    //   child: Image.asset(
                    //     'assets/images/img1.png',
                    //   ),
                    // ),
                    // const SizedBox(
                    //   width: 15,
                    // ),
                    // Container(
                    //   height: 55,
                    //   width: 60,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(0),
                    //     border: Border.all(
                    //       color: MyColor.grey,
                    //     ),
                    //   ),
                    //   child: Image.asset(
                    //     'assets/images/img2.png',
                    //   ),
                    // ),
                    // const SizedBox(
                    //   width: 15,
                    // ),
                    // Container(
                    //   height: 55,
                    //   width: 60,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(0),
                    //     border: Border.all(
                    //       color: MyColor.grey,
                    //     ),
                    //   ),
                    //   child: Image.asset(
                    //     'assets/images/img3.png',
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
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
          color: MyColor.black,
          child: Center(
            child: Text(
              'Create task',
              style: MyStyle.tx20W
                  .copyWith(fontFamily: 'Poppins-SemiBold', fontSize: 16),
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
