import 'package:colorsoul/authentication/register/forgotOTPPass.dart';
import 'package:colorsoul/authentication/register/otpVerify.dart';
import 'package:colorsoul/authentication/register/resetPass.dart';
import 'package:colorsoul/authentication/register/signInPage.dart';
import 'package:colorsoul/authentication/register/successPage.dart';
import 'package:colorsoul/authentication/register/welcome.dart';
import 'package:colorsoul/constants/routes.dart';
import 'package:colorsoul/dashboard/dashboard.dart';
import 'package:colorsoul/dashboard/home/attendance.dart';
import 'package:colorsoul/dashboard/home/notification.dart';
import 'package:colorsoul/dashboard/home/task/taskDetail.dart';
import 'package:colorsoul/dashboard/home/task/taskPage.dart';
import 'package:colorsoul/values/myColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'authentication/register/forgotPass.dart';
import 'authentication/register/pin.dart';
import 'authentication/register/splash_screen.dart';
import 'authentication/starter/starter.dart';
import 'dashboard/distributor/distributor.dart';
import 'dashboard/home/home.dart';
import 'dashboard/reimbursement/reimbursement.dart';
import 'dashboard/service/service.dart';

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
        useMaterial3: true,
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
            .copyWith(background: MyColor.white),
      ),
      home: const SplashScreen(),
      routes: {
        // ** Authentication **
        starterRoute: (context) => const Starter(),
        signInPageRoute: (context) => const SignInPage(),
        otpVerifyRoute: (context) => const OTPVerify(),
        pinRoute: (context) => const Pin(),

        // ** Welcome Page **
        welcomeRoute: (context) => const Welcome(),

        forgotPassRoute: (context) => const ForgotPass(),
        forgotOtpPassRoute: (context) => const ForgotOtpPass(),
        resetPassRoute: (context) => const ResetPass(),
        successPageRoute: (context) => const SuccessPage(),

        //   ** Dashboard **
        dashboardRoute: (context) => const Dashboard(),

        //  ** Home **
        homeRoute: (context) => const Home(),
        notificationRoute: (context) => const NotificationPage(),
        attendanceRoute: (context) => const Attendance(),

        //  ** Task **
        taskPageRoute: (context) => const TaskPage(),
        taskDetailRoute: (context) => const TaskDetail(),

        servicePageRoute: (context) => const ServicePage(),
        distributorRoute: (context) => const Distributor(),
        reimbursementRoute: (context) => const Reimbursement(),
      },
    );
  }
}
