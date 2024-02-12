import 'package:colorsoul/constants/routes.dart';
import 'package:colorsoul/values/myColor.dart';
import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.13,
            ),
            Image.asset(
              'assets/icons/colorsol.png',
              height: 40,
              width: 200,
            ),
            SizedBox(
              height: height * 0.12,
            ),
            Image.asset(
              'assets/icons/success.png',
              height: 114,
              width: 114,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Success!',
              style: MyStyle.tx40b.copyWith(
                fontSize: 30,
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Congratulations! '
                      'Your password has been changed successfully.',
                      textAlign: TextAlign.center,
                      style: MyStyle.tx14b,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pushNamedAndRemoveUntil(
              context, signInPageRoute, (route) => false);
        },
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          color: MyColor.black,
          child: Center(
            child: Text(
              'Get Started',
              style: MyStyle.tx20W
                  .copyWith(fontFamily: 'Poppins-SemiBold', fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
