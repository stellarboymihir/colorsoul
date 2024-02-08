import 'package:colorsoul/constants/routes.dart';
import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

import '../../values/myColor.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: height,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Center(
                child: Image.asset(
                  'assets/icons/logo.png',
                  height: 160,
                  width: 196,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Welcome',
                style: MyStyle.tx40b.copyWith(fontSize: 32),
              ),
              Text(
                'Samar Shah',
                style: MyStyle.tx20b.copyWith(
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                  fontFamily: 'Poppins-Regular',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 250,
                child: PinInputTextFormField(
                  pinLength:
                      4, // Set pinLength to 1 to allow only one digit per container
                  decoration: BoxLooseDecoration(
                    strokeColorBuilder: PinListenColorBuilder(
                      MyColor.grey,
                      MyColor.grey,
                    ),
                    bgColorBuilder: const FixedColorBuilder(MyColor.white),
                    radius: Radius.zero,
                    strokeWidth: 1,
                    gapSpace: 8,
                  ),
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Enter 4 digit Login PIN or Use Fingerprint',
                style: MyStyle.tx12b,
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/icons/fingerprint.png',
                height: 48,
                width: 48,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Unlock/Forgot Login PIN?',
                style: MyStyle.tx14b.copyWith(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins-ExtraBold',
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pushNamed(context, dashboardRoute);
        },
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.fromLTRB(15, 0, 15, 20),
          color: MyColor.black,
          child: const Center(
            child: Text(
              'CONTINUE',
              style: MyStyle.tx20W,
            ),
          ),
        ),
      ),
    );
  }
}
