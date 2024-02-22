import 'package:colorsoul/constants/routes.dart';
import 'package:colorsoul/values/myColor.dart';
import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController mobController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool isCheck = false;

  bool _isObscure = false;

  // logInApi() async {
  //   var loginBody = {
  //     "username": 9999999999,
  //     "password": 123456,
  //     "device_id": "#jdjofIIIHDHKSswd#%"
  //   };
  //   // var response = await
  //   await ApiHandler.postNormal(loginBody, '/login').then((value) {
  //     print(value);
  //   });
  //   // print(response);
  // }
  String? validatePhoneNumber(String? value) {
    if (value != null && value.isNotEmpty) {
      if (value.length < 10) {
        return 'Phone number must be at least 10 digits';
      }
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return "* Required";
    } else if (value.length < 6) {
      return "Password should be atleast 6 characters";
    } else if (value.length > 15) {
      return "Password should not be greater than 15 characters";
    } else
      return null;
  }

  loginApi() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var deviceId = sharedPreferences.getString("deviceId") ?? "";
    print("Device Id is: $deviceId");

    var loginBody = {
      "username": mobController.text,
      "password": passController.text,
      "device_id": deviceId,
    };
    print(loginBody);
    // var response = await ApiHandler.normalPost(loginBody, '/login');
    // print(response);
  }

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
                  // height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    controller: mobController,
                    validator: validatePhoneNumber,
                    autocorrect: false,
                    style: MyStyle.tx14b,
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        width: 50,
                        // height: 50,
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
                      // contentPadding: const EdgeInsets.symmetric(
                      //     // horizontal: 30,
                      //     // vertical: 20,
                      //     ),
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
                Container(
                  // height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    controller: passController,
                    style: MyStyle.tx14b,
                    validator: validatePassword,
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
                      // contentPadding: const EdgeInsets.symmetric(
                      //   horizontal: 20,
                      //   // vertical: 20,
                      // ),
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
                      FilteringTextInputFormatter.allow(filterPattern)
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
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              // Navigator.pushNamed(context, welcomeRoute);
              if (formKey.currentState!.validate()) {
                print("Validated");
              } else {
                print("Not Validated");
              }
              loginApi();
              print('Login Successful');
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
}
