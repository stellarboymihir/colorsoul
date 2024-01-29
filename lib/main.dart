import 'package:colorsoul/authentication/register/otpVerify.dart';
import 'package:colorsoul/authentication/register/signInPage.dart';
import 'package:colorsoul/authentication/register/welcome.dart';
import 'package:colorsoul/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'authentication/register/pin.dart';
import 'authentication/register/splash_screen.dart';
import 'authentication/starter/starter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then(
    (_) => runApp(const MyApp()),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
      ),
      home: const SplashScreen(),
      routes: {
        starterRoute: (context) => const Starter(),
        signInPageRoute: (context) => const SignInPage(),
        otpVerifyRoute: (context) => const OTPVerify(),
        pinRoute: (context) => const Pin(),
        welcomeRoute: (context) => const Welcome(),
      },
    );
  }
}
