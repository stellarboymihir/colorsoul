import 'dart:io';

import 'package:colorsoul/values/myColor.dart';
import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ReimbursementPage extends StatefulWidget {
  const ReimbursementPage({super.key});

  @override
  State<ReimbursementPage> createState() => _ReimbursementPageState();
}

class _ReimbursementPageState extends State<ReimbursementPage> {
  final List<bool> _onClick = [false, false, false];
  File? image;

  TextEditingController noteController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

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
        title: Text(
          'Create Reimbursement  ',
          style: MyStyle.tx16b.copyWith(
            fontFamily: 'Poppins-Bold',
          ),
        ),
      ),
      body: SingleChildScrollView(
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
                    size: 28,
                    color: MyColor.black,
                  ),
                  shape: Border.all(color: Colors.transparent),
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Petrol',
                          style: MyStyle.tx14b.copyWith(
                            fontFamily: 'Roboto-Regular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            activeColor: MyColor.black,
                            value: _onClick[0],
                            onChanged: (bool? val) {
                              setState(() {
                                _onClick[0] = val!;
                              });
                            })
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Fare',
                          style: MyStyle.tx14b.copyWith(
                            fontFamily: 'Roboto-Regular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            activeColor: MyColor.black,
                            value: _onClick[1],
                            onChanged: (bool? val) {
                              setState(() {
                                _onClick[1] = val!;
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
                            value: _onClick[2],
                            onChanged: (bool? val) {
                              setState(() {
                                _onClick[2] = val!;
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

              //  Note
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
                  style: MyStyle.tx14b,
                  decoration: const InputDecoration(
                    // isDense: true,
                    contentPadding: EdgeInsets.only(
                      left: 12,
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
              Row(
                children: [
                  Text(
                    'Date',
                    style: MyStyle.tx14b.copyWith(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto-Medium',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: dateController,
                  style: MyStyle.tx14b,
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/icons/calendar.png',
                        height: 5,
                        width: 5,
                        fit: BoxFit.fill,
                      ),
                    ),
                    isDense: true,
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

              //  Amount
              Row(
                children: [
                  Text(
                    'Amount',
                    style: MyStyle.tx14b.copyWith(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto-Medium',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: amountController,
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
                  keyboardType: TextInputType.text,
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              //  Description
              Row(
                children: [
                  Text(
                    'Description',
                    style: MyStyle.tx14b.copyWith(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto-Medium',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 64,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: descriptionController,
                  decoration: const InputDecoration(
                    // isDense: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 2,
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
                  maxLines: 2,
                  keyboardType: TextInputType.text,
                ),
              ),
              // const SizedBox(
              //   height: 15,
              // ),

              //  Upload Image
              Text(
                'Upload Image',
                style: MyStyle.tx14b.copyWith(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto-Medium',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              InkWell(
                onTap: () async {
                  await _pickerImg();
                },
                child: Container(
                  height: 145,
                  width: MediaQuery.of(context).size.width,
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
                            'assets/icons/img.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
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
          margin: const EdgeInsets.fromLTRB(12, 0, 12, 20),
          color: MyColor.black,
          child: Center(
              child: Text(
            'Create List',
            style: MyStyle.tx20W
                .copyWith(fontFamily: 'Poppins-SemiBold', fontSize: 15),
          )),
        ),
      ),
    );
  }

  Future<void> _pickerImg() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
      });
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick Image: $e');
      }
    }
  }
}
