import 'package:flutter/material.dart';

import '../../values/myColor.dart';
import '../../values/myStyle.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController nameController = TextEditingController();
  TextEditingController designController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController idController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColor.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 36,
            width: 36,
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.all(15),
            color: MyColor.grey,
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 14,
              ),
            ),
          ),
        ),
        title: const Text(
          'Profile',
          style: MyStyle.tx16b,
        ),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: MyColor.grey,
                    height: 120,
                    width: 120,
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/img11.png',
                      height: 108,
                      width: 108,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),

              //   Name
              Text(
                'Name',
                style: MyStyle.tx14b.copyWith(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto-Medium',
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: nameController,
                  style: MyStyle.tx14b,
                  decoration: const InputDecoration(
                    hintText: 'Samar Mehata',
                    hintStyle: MyStyle.tx16b,
                    // isDense: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 15,
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
              SizedBox(
                height: 15,
              ),

              // Designation
              Text(
                'Designation',
                style: MyStyle.tx14b.copyWith(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto-Medium',
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: designController,
                  style: MyStyle.tx14b,
                  decoration: const InputDecoration(
                    hintText: 'Sales Executive',
                    hintStyle: MyStyle.tx16b,
                    // isDense: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 15,
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
              SizedBox(
                height: 15,
              ),
              Text(
                'Mobile Number',
                style: MyStyle.tx14b.copyWith(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto-Medium',
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: numberController,
                  style: MyStyle.tx14b,
                  decoration: const InputDecoration(
                    hintText: '+91 123456789',
                    hintStyle: MyStyle.tx16b,
                    // isDense: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 15,
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
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Email ID',
                style: MyStyle.tx14b.copyWith(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto-Medium',
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: idController,
                  style: MyStyle.tx14b,
                  decoration: const InputDecoration(
                    hintText: '123@gmail.com',
                    hintStyle: MyStyle.tx16b,
                    // isDense: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 15,
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
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          // Navigator.pushNamed(
          //   context,
          // );
          Navigator.pop(context);
        },
        child: InkWell(
          onTap: () {
            // Navigator.pushNamed(context, resetPassRoute);
            Navigator.pop(context);
          },
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: MyColor.black,
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Center(
              child: Text(
                'Save Change',
                style: MyStyle.tx20W
                    .copyWith(fontFamily: 'Poppins-SemiBold', fontSize: 15),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
