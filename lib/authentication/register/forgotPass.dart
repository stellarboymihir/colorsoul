import 'package:colorsoul/constants/routes.dart';
import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../values/myColor.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  TextEditingController forgotPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Center(
                child: Image.asset(
                  'assets/icons/colorsol.png',
                  height: 46,
                  width: 223,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Image.asset(
                  'assets/icons/forgotPass.png',
                  width: 178,
                  height: 159,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Forgot Password?',
                style: MyStyle.tx32b,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Center(
                  child: Text(
                    'Enter your mobile phone number '
                    'associated with your Colorsoul account.',
                    style: MyStyle.tx14b,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 50,
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
                          controller: forgotPassController,
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
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(10),
                          ],
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, forgotOtpPassRoute);
                },
                child: Container(
                  height: 65,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  color: MyColor.black,
                  child: const Center(
                    child: Text(
                      'Continue',
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
