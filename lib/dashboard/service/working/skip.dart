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
  List<bool> isClick = [false, false, false];
  File? image;
  TextEditingController reasonController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          'Skip',
          style: MyStyle.tx16b,
        ),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
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
                    child: image != null
                        ? Image.file(
                            height: 54,
                            width: 54,
                            image!,
                            fit: BoxFit.fill,
                          )
                        : Center(
                            child: Image.asset(
                              'assets/icons/camera.png',
                              height: 70,
                              width: 70,
                            ),
                          ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Title',
                style: MyStyle.tx14b.copyWith(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto-Medium',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
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
                    'Title',
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
                          'Closed',
                          style: MyStyle.tx14b.copyWith(
                            fontFamily: 'Roboto-Regular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Not Available',
                          style: MyStyle.tx14b.copyWith(
                            fontFamily: 'Roboto-Regular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            activeColor: MyColor.black,
                            value: isClick[1],
                            onChanged: (bool? val) {
                              setState(() {
                                isClick[1] = val!;
                              });
                            })
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Other',
                          style: MyStyle.tx14b.copyWith(
                            fontFamily: 'Roboto-Regular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            activeColor: MyColor.black,
                            value: isClick[2],
                            onChanged: (bool? val) {
                              setState(() {
                                isClick[2] = val!;
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
                height: 15,
              ),
              Text(
                'Reason ',
                style: MyStyle.tx14b.copyWith(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto-Medium',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 120,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: reasonController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
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
                  maxLines: 5,
                  keyboardType: TextInputType.text,
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
          margin: const EdgeInsets.fromLTRB(12, 0, 12, 20),
          width: MediaQuery.of(context).size.width,
          color: MyColor.black,
          child: Center(
            child: Text(
              'Done',
              style: MyStyle.tx20W.copyWith(
                fontFamily: 'Poppins-SemiBold',
                fontSize: 16,
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
