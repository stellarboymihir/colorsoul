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
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Image.asset(
                    'assets/icons/bro.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Let’s started',
                  style: MyStyle.tx20b.copyWith(
                    fontFamily: 'Poppins-SemiBold',
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                  child: Text(
                    'You can use all our services. '
                    'you can manage your sales and transactions to be successful',
                    textAlign: TextAlign.center,
                    style: MyStyle.tx12b.copyWith(
                      fontFamily: 'Poppins-Regular',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pushReplacementNamed(context, signInPageRoute);
        },
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.fromLTRB(15, 0, 15, 20),
          color: MyColor.black,
          child: Center(
            child: Text(
              'SIGN IN',
              style: MyStyle.tx20W.copyWith(
                fontSize: 15,
                fontFamily: 'Poppins-SemiBold',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
