import 'package:colorsoul/authentication/register/forgotOTPPass.dart';
import 'package:colorsoul/authentication/register/otpVerify.dart';
import 'package:colorsoul/authentication/register/resetPass.dart';
import 'package:colorsoul/authentication/register/signInPage.dart';
import 'package:colorsoul/authentication/register/successPage.dart';
import 'package:colorsoul/authentication/register/welcome.dart';
import 'package:colorsoul/constants/routes.dart';
import 'package:colorsoul/dashboard/dashboard.dart';
import 'package:colorsoul/dashboard/distributor/distributorList.dart';
import 'package:colorsoul/dashboard/drawer/media.dart';
import 'package:colorsoul/dashboard/drawer/setting.dart';
import 'package:colorsoul/dashboard/home/attendance.dart';
import 'package:colorsoul/dashboard/home/floating/newRetailer/createRoute/createRoute.dart';
import 'package:colorsoul/dashboard/home/floating/newRetailer/createRoute/createRouteFloating.dart';
import 'package:colorsoul/dashboard/home/floating/newRetailer/newFloatingDistributor.dart';
import 'package:colorsoul/dashboard/home/floating/newRetailer/newFloatingRetailer.dart';
import 'package:colorsoul/dashboard/home/floating/newRetailer/newRetailer.dart';
import 'package:colorsoul/dashboard/home/floating/reimbursementPage.dart';
import 'package:colorsoul/dashboard/home/notification.dart';
import 'package:colorsoul/dashboard/drawer/profile.dart';
import 'package:colorsoul/dashboard/home/task/taskDetail.dart';
import 'package:colorsoul/dashboard/home/task/taskPage.dart';
import 'package:colorsoul/dashboard/reimbursement/history.dart';
import 'package:colorsoul/dashboard/service/completed/completed.dart';
import 'package:colorsoul/dashboard/service/working/shoppers/getOrder.dart';
import 'package:colorsoul/dashboard/service/working/shoppers/getStock/getStock.dart';
import 'package:colorsoul/dashboard/service/working/shoppers/getStock/scan.dart';
import 'package:colorsoul/dashboard/service/working/shoppers/shoppers.dart';
import 'package:colorsoul/dashboard/service/working/working.dart';
import 'package:colorsoul/values/myColor.dart';
import 'package:colorsoul/videoPlaying.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'authentication/register/forgotPass.dart';
import 'authentication/register/pin.dart';
import 'authentication/register/splash_screen.dart';
import 'authentication/starter/starter.dart';
import 'dashboard/distributor/distributor.dart';
import 'dashboard/distributor/filter.dart';
import 'dashboard/distributor/retailerList.dart';
import 'dashboard/drawer/Nail.dart';
import 'dashboard/drawer/order.dart';
import 'dashboard/home/floating/createTask.dart';
import 'dashboard/home/home.dart';
import 'dashboard/reimbursement/reimbursement.dart';
import 'dashboard/service/service.dart';
import 'dashboard/service/working/shoppers/checkOut.dart';
import 'dashboard/service/working/editRoute.dart';
import 'dashboard/service/working/shoppers/imageRoute.dart';
import 'dashboard/service/working/skip.dart';

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
        shadowColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
            .copyWith(background: MyColor.white),
      ),
      home: SplashScreen(),
      // Api_Handler(),

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

        //  ** Drawer  **
        profileRoute: (context) => const Profile(),
        ordersRoute: (context) => const Orders(),
        mediaRoute: (context) => const MediaCenter(),
        settingRoute: (context) => const Setting(),
        nailRoute: (context) => const Nail(),

        //  **  Floating  **
        reimbursementPageRoute: (context) => const ReimbursementPage(),

        //  **  Create Route  **
        createRoute: (context) => const CreateRoute(),
        createRouteFloating: (context) => const CreateRouteFloating(),

        createTaskRoute: (context) => const CreateTask(),

        //  **  New Retailer  **
        newRetailerRoute: (context) => const NewRetailer(),
        newFloatingDistributorRoute: (context) => const FloatingDistributor(),
        newFloatingRetailerRoute: (context) => const FloatingRetailer(),
        //  ** Task **
        taskPageRoute: (context) => const TaskPage(),
        taskDetailRoute: (context) => const TaskDetail(),

        //   **  Service **
        servicePageRoute: (context) => const ServicePage(),

        workingRoute: (context) => const Working(),
        completedRoute: (context) => const Completed(),
        editRoute: (context) => const EditRoute(),

        //   ** Shoppers  **
        shoppersRoute: (context) => const Shoppers(),
        checkOutRoute: (context) => const CheckOut(),
        imageRoute: (context) => const ImageRoute(),

        //   ** Get Stock   **
        getStockRoute: (context) => const GetStock(),
        scanRoute: (context) => const Scan(),
        getOrderRoute: (context) => const GetOrder(),
        skipRoute: (context) => const Skip(),

        //   ** Distributor/Retailer List
        distributorRoute: (context) => const Distributor(),
        distributorListRoute: (context) => const DistributorList(),
        retailerListRoute: (context) => const RetailerList(),
        filterRoute: (context) => const Filter(),

        //   **  History  **
        reimbursementRoute: (context) => const Reimbursement(),
        historyRoute: (context) => const History(),
        videoPlayingRoute: (context) => const VideoPlaying(),

        //    **  API Handler  **
      },
    );
  }
}
