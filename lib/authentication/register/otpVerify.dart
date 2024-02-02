import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/material.dart';

import '../../constants/routes.dart';
import '../../values/myColor.dart';

class OTPVerify extends StatefulWidget {
  const OTPVerify({super.key});

  @override
  State<OTPVerify> createState() => _OTPVerifyState();
}

class _OTPVerifyState extends State<OTPVerify> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.asset(
                'assets/icons/colorsol.png',
                height: 46,
                width: 223,
                // fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 90,
              ),
              Text(
                '+91 123456789',
                style: MyStyle.tx32b.copyWith(fontFamily: 'Poppins-Bold'),
              ),
              const Text(
                'Enter 6 digit verification code ',
                style: MyStyle.tx14b,
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                // decoration: BoxDecoration(
                //   border: Border.all(
                //     color: MyColor.grey,
                //   ),
                // ),
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  controller: otpController,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: MyColor.grey,
                      ),
                      borderRadius: BorderRadius.circular(1),
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
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                'Didn’t receive the code?',
                style: MyStyle.tx14b,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 31,
                color: MyColor.black,
                width: 90,
                child: Center(
                  child: Text(
                    'RESEND',
                    style: MyStyle.tx12w.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, pinRoute);
                },
                child: Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width,
                  color: MyColor.black,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: const Center(
                    child: Text(
                      'Continue',
                      style: MyStyle.tx20W,
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
