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
            height: 40,
            width: 40,
            margin: const EdgeInsets.symmetric(horizontal: 12),
            child: Image.asset(
              'assets/icons/back.png',
              height: 40,
              width: 40,
            ),
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
            children: [
              //   Title
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
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                // margin: const EdgeInsets.all(12),
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
                    trailing: const Icon(
                      // _customTileExpanded
                      //     ? Icons.arrow_drop_down_circle
                      //     : Icons.arrow_drop_down,
                      Icons.arrow_drop_down_sharp,
                      color: MyColor.black,
                    ),
                    shape: Border.all(color: MyColor.grey),
                    onExpansionChanged: (bool expanded) {
                      setState(() {});
                    },
                    title: const Text(''),
                    children: <Widget>[
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Petrol',
                              style: MyStyle.tx14b.copyWith(
                                fontFamily: 'Roboto-Medium',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Checkbox(
                                activeColor: MyColor.black,
                                value: _onClick[0],
                                onChanged: (bool? val) {
                                  setState(() {
                                    _onClick[0] = val!;
                                  });
                                })
                          ],
                        ),
                      ),
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Fare',
                              style: MyStyle.tx14b.copyWith(
                                fontFamily: 'Roboto-Medium',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Checkbox(
                                activeColor: MyColor.black,
                                value: _onClick[1],
                                onChanged: (bool? val) {
                                  setState(() {
                                    _onClick[1] = val!;
                                  });
                                })
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
                                value: _onClick[2],
                                onChanged: (bool? val) {
                                  setState(() {
                                    _onClick[2] = val!;
                                  });
                                })
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              //  Note
              Row(
                children: [
                  Text(
                    'Note',
                    style: MyStyle.tx14b.copyWith(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto-Medium',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: noteController,
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
                  keyboardType: TextInputType.text,
                ),
              ),
              const SizedBox(
                height: 20,
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
                height: 10,
              ),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(vertical: 2),
                child: TextFormField(
                  controller: dateController,
                  decoration: InputDecoration(
                    suffixIcon: Container(
                      height: 24,
                      width: 24,
                      margin: const EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/icons/calendar.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
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
                height: 20,
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
                height: 10,
              ),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: amountController,
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
                  keyboardType: TextInputType.text,
                ),
              ),
              const SizedBox(
                height: 20,
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
                height: 10,
              ),
              Container(
                height: 74,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: descriptionController,
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
                  maxLines: 2,
                  keyboardType: TextInputType.text,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              //  Upload Image
              Row(
                children: [
                  Text(
                    'Upload Image',
                    style: MyStyle.tx14b.copyWith(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto-Medium',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 145,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () async {
                      await _pickerImg();
                    },
                    child: image != null
                        ? Image.file(
                            image!,
                            height: 54,
                            width: 54,
                            fit: BoxFit.cover,
                          )
                        : Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.asset(
                              'assets/icons/img.png',
                              height: 54,
                              width: 54,
                            ),
                          ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                color: MyColor.black,
                child: const Center(
                    child: Text(
                  'Create List',
                  style: MyStyle.tx20W,
                )),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
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
        Navigator.pop(context);
      });
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick Image: $e');
      }
    }
  }
}
