import 'package:flutter/material.dart';

import '../../../values/myColor.dart';
import '../../../values/myStyle.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  TextEditingController titleController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController attachController = TextEditingController();
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
        title: const Text(
          ' CREATE NEW TASK',
          style: MyStyle.tx16b,
        ),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              //   Title
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Text(
                      'Title',
                      style: MyStyle.tx14b.copyWith(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto-Medium',
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
                margin: const EdgeInsets.symmetric(vertical: 2),
                child: TextFormField(
                  controller: titleController,
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
                  keyboardType: TextInputType.name,
                ),
              ),

              //   Note
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      'Note',
                      style: MyStyle.tx14b.copyWith(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto-Medium',
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
                margin: const EdgeInsets.symmetric(vertical: 2),
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

              //  Date
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      'Date',
                      style: MyStyle.tx14b.copyWith(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto-Medium',
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
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

              //  Attachment
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      'Attachment',
                      style: MyStyle.tx14b.copyWith(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto-Medium',
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                // decoration: BoxDecoration(
                //   border: Border.all(
                //     color: MyColor.grey,
                //   ),
                // ),
                margin: const EdgeInsets.symmetric(vertical: 0),
                child: TextFormField(
                  controller: attachController,
                  decoration: InputDecoration(
                    suffixIcon: Container(
                      height: 24,
                      width: 24,
                      margin: const EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/icons/paper.png',
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
                  keyboardType: TextInputType.text,
                ),
              ),

              // Description
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      'Description',
                      style: MyStyle.tx14b.copyWith(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto-Medium',
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 101,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
                margin: const EdgeInsets.symmetric(vertical: 2),
                child: TextFormField(
                  controller: descriptionController,
                  decoration: const InputDecoration(
                    isDense: true,
                    // contentPadding: EdgeInsets.symmetric(
                    //   horizontal: 20,
                    //   vertical: ,
                    // ),
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      'Add Team Member',
                      style: MyStyle.tx14b.copyWith(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto-Medium',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 55,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      border: Border.all(
                        color: MyColor.grey,
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 32,
                      color: MyColor.black,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 55,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      border: Border.all(
                        color: MyColor.grey,
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/img1.png',
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 55,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      border: Border.all(
                        color: MyColor.grey,
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/img2.png',
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 55,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      border: Border.all(
                        color: MyColor.grey,
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/img3.png',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
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
                      'Create task',
                      style: MyStyle.tx20W,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
