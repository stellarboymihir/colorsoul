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
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.25,
              ),
              Image.asset(
                'assets/icons/colorsol.png',
                height: 46,
                width: 223,
              ),
              const SizedBox(
                height: 70,
              ),
              Image.asset(
                'assets/icons/success.png',
                height: 114,
                width: 114,
              ),
              SizedBox(
                height: 5,
              ),
              const Text(
                'Success!',
                style: MyStyle.tx40b,
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
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, signInPageRoute);
                },
                child: Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  color: MyColor.black,
                  child: const Center(
                    child: Text(
                      'Get Started',
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
