import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/material.dart';

import '../../values/myColor.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: Image.asset('assets/icons/logo.png'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Welcome',
            style: MyStyle.tx40b,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Samar Shah',
            style: MyStyle.tx20b.copyWith(
              fontWeight: FontWeight.w300,
              fontFamily: 'Poppins-Regular',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Enter 4 digit Login PIN or Use Fingerprint',
            style: MyStyle.tx12b,
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/icons/fingerprint.png',
            height: 48,
            width: 48,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Unlock/Forgot Login PIN?',
            style: MyStyle.tx14b.copyWith(
              fontWeight: FontWeight.w700,
              fontFamily: 'Poppins-Bold',
            ),
          ),
          Spacer(),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 20),
            color: MyColor.black,
            child: Center(
              child: Text(
                'CONTINUE',
                style: MyStyle.tx20W,
              ),
            ),
          )
        ],
      ),
    );
  }
}
