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
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70.0),
            child: Image.asset(
              'assets/icons/colorsol.png',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 90,
          ),
          const Text(
            '+91 123456789',
            style: MyStyle.tx32b,
          ),
          const Text(
            'Enter 6 digit verification code ',
            style: MyStyle.tx14b,
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: MyColor.grey,
              ),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: otpController,
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
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          const Text(
            'Didn’t receive the code?',
            style: MyStyle.tx14b,
          ),
          SizedBox(
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
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, pinRoute);
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: MyColor.black,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: const Text(
                  'Continue',
                  style: MyStyle.tx20W,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
