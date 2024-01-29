import 'dart:async';

import 'package:colorsoul/constants/routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, starterRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 70,
              ),
              child: Image.asset(
                'assets/icons/colorsol.png',
                fit: BoxFit.fill,
                height: 46,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Image.asset(
              'assets/images/splash.png',
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height - 46,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ],
      ),
    );
  }
}
