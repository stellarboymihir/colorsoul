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
                height: 80,
              ),
              Image.asset(
                'assets/icons/success.png',
                height: 114,
                width: 114,
              ),
              const Text(
                'Success!',
                style: MyStyle.tx40b,
              ),
              // SizedBox(
              //   height: 5,
              // ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
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
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  color: MyColor.black,
                  child: const Center(
                    child: Text(
                      'Get Started',
                      style: MyStyle.tx20W,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
