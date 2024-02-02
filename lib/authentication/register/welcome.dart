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
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/icons/logo.png',
                  height: 220,
                  width: 196,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Welcome',
                style: MyStyle.tx40b,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Samar Shah',
                style: MyStyle.tx20b.copyWith(
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Poppins-Regular',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 65,
                // width: 250,
                margin: const EdgeInsets.symmetric(horizontal: 50),
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
                height: 20,
              ),
              const Text(
                'Enter 4 digit Login PIN or Use Fingerprint',
                style: MyStyle.tx12b,
              ),
              const SizedBox(
                height: 20,
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
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, dashboardRoute);
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  color: MyColor.black,
                  child: const Center(
                    child: Text(
                      'CONTINUE',
                      style: MyStyle.tx20W,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
