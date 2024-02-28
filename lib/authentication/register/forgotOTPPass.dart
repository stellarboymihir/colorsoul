import 'package:colorsoul/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../values/myColor.dart';
import '../../values/myStyle.dart';

class ForgotOtpPass extends StatefulWidget {
  const ForgotOtpPass({super.key});

  @override
  State<ForgotOtpPass> createState() => _ForgotOtpPassState();
}

class _ForgotOtpPassState extends State<ForgotOtpPass> {
  TextEditingController forgotOtpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.11,
            ),
            Image.asset(
              'assets/icons/colorsol.png',
              fit: BoxFit.fill,
              height: 40,
              width: 200,
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
                fontSize: 26,
                fontWeight: FontWeight.w800,
                fontFamily: 'Poppins-Bold',
              ),
            ),
            const Text(
              'Enter 6 digit verification code ',
              style: MyStyle.tx14b,
            ),
            const SizedBox(
              height: 40,
            ),

            //  Forgot Password TextFormField
            Container(
              height: 50,
              width: width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: forgotOtpController,
                decoration: const InputDecoration(
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                  LengthLimitingTextInputFormatter(6),
                ],
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Didn’t receive the code?',
              style: MyStyle.tx14b,
            ),
            const SizedBox(
              height: 10,
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
          // Navigator.pushNamed(
          //   context,
          // );
        },
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, resetPassRoute);
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
                    .copyWith(fontFamily: 'Poppins-SemiBold', fontSize: 15),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
