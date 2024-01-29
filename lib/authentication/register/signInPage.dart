import 'package:colorsoul/constants/routes.dart';
import 'package:colorsoul/values/myColor.dart';
import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController mobController = TextEditingController();
  TextEditingController passController = TextEditingController();

  bool _isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Image.asset(
                  'assets/icons/colorsol.png',
                  height: 46,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Sign In',
                  style: MyStyle.tx32b,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                ),
                child: Text(
                  'Mobile No.',
                  style: MyStyle.tx14b,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      height: 65,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: MyColor.grey,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          '+91',
                          style: MyStyle.tx20b,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 65,
                        margin: const EdgeInsets.only(right: 20),
                        child: TextFormField(
                          controller: mobController,
                          decoration: const InputDecoration(
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
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Password',
                  style: MyStyle.tx14b,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: passController,
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
                  obscureText: _isObscure,
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  'Forgot password?',
                  textAlign: TextAlign.center,
                  style: MyStyle.tx14b.copyWith(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins-SemiBold',
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
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
                          .copyWith(fontFamily: 'Poppins-SemiBold'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, welcomeRoute);
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  color: MyColor.black,
                  child: Center(
                    child: Text(
                      'SIGN IN',
                      style: MyStyle.tx20W
                          .copyWith(fontFamily: 'Poppins-SemiBold'),
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
