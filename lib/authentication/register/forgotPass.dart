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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Image.asset(
                'assets/icons/colorsol.png',
                height: 44,
                width: 200,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/icons/forgotPass.png',
                width: 190,
                height: 159,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Forgot Password?',
                style: MyStyle.tx32b.copyWith(
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Center(
                  child: Text(
                    'Enter your mobile phone number '
                    'associated with your Colorsoul account.',
                    textAlign: TextAlign.center,
                    style: MyStyle.tx14b.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  controller: forgotPassController,
                  style: MyStyle.tx14b,
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      width: 50,
                      height: 50,
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
                    contentPadding: const EdgeInsets.only(left: 40),
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
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, forgotOtpPassRoute);
                },
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  width: MediaQuery.of(context).size.width,
                  color: MyColor.black,
                  child: Center(
                    child: Text(
                      'Continue',
                      style: MyStyle.tx20W.copyWith(fontSize: 15),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
