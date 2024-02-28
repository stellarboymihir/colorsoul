import 'dart:convert';

import 'package:colorsoul/constants/routes.dart';
import 'package:colorsoul/values/myColor.dart';
import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../api_handler/api_handler.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController mobController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Color _phoneNumberBorderColor = MyColor.grey;
  Color _passwordBorderColor = MyColor.grey;

  bool _visible = true;

  bool isCheck = false;

  bool _isObscure = false;

  String? validatePhoneNumber(String? value) {
    if (value!.isEmpty) {
      if (value.length < 10) {
        return 'Phone number must be at least 10 digits';
      }
    }
    return null;
  }

  String? validatePassword(String? value) {
    // RegExp regex =
    //     RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value!.isEmpty) {
      return "Password is required";
    }
    return null;
  }

  loginApi() async {
    // myLoader();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Row(
            children: [
              CircularProgressIndicator(),
              SizedBox(width: 20),
              Text('Loading...'),
            ],
          ),
        );
      },
    );

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var deviceId = sharedPreferences.getString("deviceId") ?? "";
    print("Device Id is: $deviceId");

    var loginBody = {
      "username": mobController.text,
      "password": passController.text,
      "device_id": deviceId,
    };

    var response = await ApiHandler.normalPost(loginBody, '/login');
    print(response);

    if (response['st'] == "success") {
      // Your success logic
      Navigator.pop(context); // Dismiss the loading dialog
      Navigator.pushNamed(context, pinRoute);
    } else {
      Navigator.pop(context); // Dismiss the loading dialog
      Fluttertoast.showToast(msg: "${response['msg']}");

      //   if (response['msg'] == "Already Logged in different Device!!!") {
      //     setState(() {
      //       _visible = true;
      //       print(_visible);
      //     });
      //   } else {
      //     setState(() {
      //       _visible = false;
      //       print(_visible);
      //     });
      //   }
      // }
      print("Response message: ${response['msg']}");
      setState(() {
        _visible = response['msg'] == "Already Logged in different Device!!!";
        print("_visible: $_visible");
      });
    }
  }

  // resetApi() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   var deviceId = preferences.getString("deviceId") ?? "";
  //   print("Device Id is: $deviceId");
  //
  //   var resetDeviceBody = {
  //     "mobile_no": mobController.text,
  //     "device_id": deviceId,
  //   };
  //   print(json.encode(resetDeviceBody));
  //
  //   var response =
  //       await ApiHandler.normalPost(resetDeviceBody, '/reset_device_id');
  //   print("90-====== $response");
  //
  //   if (response['st'] == "success") {
  //     var mobile = response['mobile_no'];
  //
  //     preferences.setString('mobile', "$mobile");
  //
  //     print("$response['mobile']");
  //   } else {}
  // }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                Image.asset(
                  'assets/icons/colorsol.png',
                  height: 40,
                  width: 200,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                Row(
                  children: [
                    Text(
                      'Sign In',
                      textAlign: TextAlign.start,
                      style: MyStyle.tx32b.copyWith(
                        fontFamily: 'Poppins-SemiBold',
                        fontSize: 23,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      'Mobile No.',
                      style: MyStyle.tx14b.copyWith(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    controller: mobController,
                    validator: validatePhoneNumber,
                    autocorrect: false,
                    style: MyStyle.tx14b,
                    onChanged: (value) {
                      setState(() {
                        _phoneNumberBorderColor =
                            validatePhoneNumber(value) == null
                                ? MyColor.red
                                : MyColor.grey;
                      });
                    },
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        width: 50,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              color: MyColor.grey,
                            ),
                          ),
                        ),
                        child: Text(
                          '+91',
                          textAlign: TextAlign.center,
                          style: MyStyle.tx20b.copyWith(
                            fontSize: 14,
                            fontFamily: 'Poppins-SemiBold',
                          ),
                        ),
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.red,
                        ),
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
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(10),
                    ],
                    keyboardType: TextInputType.phone,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Password',
                      style: MyStyle.tx14b.copyWith(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  // height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    controller: passController,
                    style: MyStyle.tx14b,
                    validator: validatePassword,
                    onChanged: (value) {
                      setState(() {
                        _passwordBorderColor = validatePassword(value) == null
                            ? MyColor.red
                            : MyColor.grey;
                      });
                    },
                    decoration: InputDecoration(
                      isDense: true,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                        icon: Icon(_isObscure
                            ? Icons.visibility_off_sharp
                            : Icons.visibility_sharp),
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
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(15),
                    ],
                    obscureText: _isObscure,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: TextButton(
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {
                      // Navigator.pushNamed(context, forgotPassRoute);
                      setState(() {
                        isCheck = !isCheck;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        isCheck
                            ? const Icon(
                                Icons.check_box,
                                color: MyColor.black,
                              )
                            : const Icon(
                                Icons.check_box_outline_blank,
                                color: MyColor.black,
                              ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Enables biometric access to Login',
                          textAlign: TextAlign.center,
                          style: MyStyle.tx14b.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins-SemiBold',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, forgotPassRoute);
                    },
                    child: Text(
                      'Forgot password?',
                      textAlign: TextAlign.center,
                      style: MyStyle.tx14b.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins-SemiBold',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: _visible,
            child: InkWell(
              onTap: () {
                // resetApi();
                // Navigator.pushNamed(context, resetDeviceRoute);
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                color: MyColor.grey,
                child: Center(
                  child: Text(
                    'RESET DEVICE',
                    style: MyStyle.tx20b
                        .copyWith(fontFamily: 'Poppins-SemiBold', fontSize: 15),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, otpVerifyRoute);
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              color: MyColor.grey,
              child: Center(
                child: Text(
                  'GET OTP',
                  style: MyStyle.tx20b
                      .copyWith(fontFamily: 'Poppins-SemiBold', fontSize: 15),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              if (formKey.currentState!.validate()) {
                loginApi();
                print("Validated");
              } else {
                print("Not Validated");
              }
            },
            child: Container(
              height: 50,
              width: width,
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              color: MyColor.black,
              child: Center(
                child: Text(
                  'SIGN IN',
                  style: MyStyle.tx20W
                      .copyWith(fontFamily: 'Poppins-SemiBold', fontSize: 15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future myLoader() {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1),
            ),
            backgroundColor: MyColor.white,
            content: Row(
              children: [
                const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(MyColor.black),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'Loading...',
                  style: MyStyle.tx14b.copyWith(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins-SemiBold',
                  ),
                ),
              ],
            ),
          );
        });
  }
}
