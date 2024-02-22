import 'dart:async';

import 'package:colorsoul/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    deviceExist();
  }

  void deviceExist() async {
    var uuid = const Uuid();
    late var deviceId = uuid.v1();

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    if (sharedPreferences.getString("deviceId") == null) {
      sharedPreferences.setString("deviceId", deviceId);
    }

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
                fit: BoxFit.cover,
                height: 46,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/splash.png',
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ],
      ),
    );
  }
}
