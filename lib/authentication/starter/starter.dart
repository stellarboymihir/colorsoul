import 'package:colorsoul/constants/routes.dart';
import 'package:colorsoul/values/myColor.dart';
import 'package:flutter/material.dart';

import '../../values/myStyle.dart';

class Starter extends StatefulWidget {
  const Starter({super.key});

  @override
  State<Starter> createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: Image.asset('assets/icons/logo.png'),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Image.asset(
                  'assets/icons/bro.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Let’s started',
              style: MyStyle.tx20b,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'You can use all our services. '
                'you can manage your sales and transactions to be successful',
                textAlign: TextAlign.center,
                style: MyStyle.tx12b,
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, signInPageRoute);
              },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                color: MyColor.black,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Text(
                    'SIGN IN',
                    style: MyStyle.tx20W.copyWith(
                      fontFamily: 'Poppins-SemiBold',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
