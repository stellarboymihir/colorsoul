import 'package:colorsoul/constants/routes.dart';
import 'package:colorsoul/values/myColor.dart';
import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/material.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class Pin extends StatefulWidget {
  const Pin({super.key});

  @override
  State<Pin> createState() => _PinState();
}

class _PinState extends State<Pin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              'assets/icons/logo.png',
              height: 160,
              width: 196,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Generate PIN',
              style: MyStyle.tx40b
                  .copyWith(fontFamily: 'Poppins-Bold', fontSize: 34),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                    'Enter 4 digit Login PIN ',
                    textAlign: TextAlign.start,
                    style: MyStyle.tx12b.copyWith(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50, width: 250,
              // margin: const EdgeInsets.symmetric(horizontal: 50),
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
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Text(
                    'Confirm 4 digit Login PIN',
                    textAlign: TextAlign.start,
                    style: MyStyle.tx12b.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 250,
              margin: const EdgeInsets.symmetric(horizontal: 50),
              child: PinInputTextFormField(
                pinLength: 4,
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
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pushNamedAndRemoveUntil(
              context, dashboardRoute, (route) => false);
        },
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          color: MyColor.black,
          child: Center(
            child: Text(
              'Submit',
              style: MyStyle.tx20W
                  .copyWith(fontFamily: 'Poppins-SemiBold', fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
