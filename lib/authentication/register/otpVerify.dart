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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset(
              'assets/icons/colorsol.png',
              height: 40,
              width: 200,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 90,
            ),
            Text(
              '+91 123456789',
              style: MyStyle.tx32b.copyWith(
                fontFamily: 'Poppins-Bold',
                fontSize: 28,
              ),
            ),
            Text(
              'Enter 6 digit verification code ',
              style: MyStyle.tx14b.copyWith(
                fontSize: 13,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                controller: otpController,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
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
              height: 50,
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
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pushNamed(context, pinRoute);
        },
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          color: MyColor.black,
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Center(
            child: Text(
              'Continue',
              style: MyStyle.tx20W
                ..copyWith(fontFamily: 'Poppins-SemiBold', fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
