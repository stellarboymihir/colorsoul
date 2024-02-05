import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../../values/myColor.dart';
import '../../../values/myStyle.dart';

class Skip extends StatefulWidget {
  const Skip({super.key});

  @override
  State<Skip> createState() => _SkipState();
}

class _SkipState extends State<Skip> {
  List<bool> isClick = [false, false];
  File? image;
  TextEditingController reasonController = TextEditingController();

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
          'Skip',
          style: MyStyle.tx16b,
        ),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(vertical: 0),
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
                    child: SizedBox(
                      height: 54,
                      width: 54,
                      child: image != null
                          ? Image.file(
                              image!,
                              fit: BoxFit.cover,
                            )
                          : Image.asset(
                              'assets/icons/camera.png',
                            ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Title',
                      style: MyStyle.tx14b.copyWith(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto-Medium',
                      ),
                    ),
                  ],
                ),
                Container(
                  // height: 55,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: MyColor.grey,
                    ),
                  ),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      dividerColor: Colors.transparent,
                    ),
                    child: ExpansionTile(
                      title: const Text(
                        '',
                        style: MyStyle.tx14b,
                      ),
                      trailing: const Icon(
                        // _customTileExpanded
                        //     ? Icons.arrow_drop_down_circle
                        //     : Icons.arrow_drop_down,
                        Icons.arrow_drop_down_sharp,
                        color: MyColor.black,
                      ),
                      shape: Border.all(color: MyColor.grey),
                      children: <Widget>[
                        ListTile(
                          title: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Closed',
                                    style: MyStyle.tx14b.copyWith(
                                      fontFamily: 'Roboto-Medium',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Checkbox(
                                      activeColor: MyColor.black,
                                      value: isClick[0],
                                      onChanged: (bool? val) {
                                        setState(() {
                                          isClick[0] = val!;
                                        });
                                      })
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Not Available',
                                    style: MyStyle.tx14b.copyWith(
                                      fontFamily: 'Roboto-Medium',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Other',
                                style: MyStyle.tx14b.copyWith(
                                  fontFamily: 'Roboto-Medium',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Checkbox(
                                  activeColor: MyColor.black,
                                  value: isClick[1],
                                  onChanged: (bool? val) {
                                    setState(() {
                                      isClick[1] = val!;
                                    });
                                  })
                            ],
                          ),
                        ),
                      ],
                      onExpansionChanged: (bool expanded) {
                        setState(() {});
                      },
                    ),
                  ),
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                Row(
                  children: [
                    Text(
                      'Reason ',
                      style: MyStyle.tx14b.copyWith(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto-Medium',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 149,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    controller: reasonController,
                    decoration: const InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
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
                SizedBox(
                  height: 120,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width,
                    color: MyColor.black,
                    child: const Center(
                      child: Text(
                        'Done',
                        style: MyStyle.tx20W,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
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
