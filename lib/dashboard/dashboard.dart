import 'dart:io';

import 'package:colorsoul/constants/routes.dart';
import 'package:colorsoul/dashboard/reimbursement/reimbursement.dart';
import 'package:colorsoul/dashboard/service/service.dart';
import 'package:colorsoul/values/myColor.dart';
import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/material.dart';

import 'distributor/distributor.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'home/home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currIndex = 0;

  List<Widget> pages = [
    const Home(),
    const ServicePage(),
    const Distributor(),
    const Reimbursement(),
  ];

  List<bool> onClick = <bool>[false, false];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        backPressed();
        return false;
      },
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: SpeedDial(
          buttonSize: const Size(46, 46),
          childrenButtonSize: const Size(40, 50),
          // childMargin: EdgeInsets.only(left: 10),
          spaceBetweenChildren: 10,
          spacing: 10,
          overlayColor: MyColor.black,
          children: [
            SpeedDialChild(
              onTap: () {
                Navigator.pushNamed(context, reimbursementPageRoute);
              },
              shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              child: Image.asset(
                'assets/icons/reim.png',
                height: 20,
                width: 20,
              ),
              labelWidget: Text(
                'Reimbursement  ',
                style: MyStyle.tx14w.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SpeedDialChild(
              onTap: () {
                Navigator.pushNamed(context, createRoute);
              },
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              // backgroundColor: MyColor.white,
              child: Image.asset(
                'assets/icons/location.png',
                height: 20,
                width: 20,
              ),
              labelWidget: Text(
                'Create Route  ',
                style: MyStyle.tx14w.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SpeedDialChild(
              onTap: () {
                Navigator.pushNamed(context, newRetailerRoute);
              },
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              backgroundColor: MyColor.white,
              child: Image.asset(
                'assets/icons/distributor.png',
                height: 20,
                width: 20,
              ),
              labelWidget: Text(
                'Add new distributor/Retailer  ',
                style: MyStyle.tx14w.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SpeedDialChild(
              onTap: () {
                Navigator.pushNamed(context, createTaskRoute);
              },
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              backgroundColor: MyColor.white,
              child: Image.asset(
                'assets/icons/pad.png',
                height: 20,
                width: 20,
              ),
              labelWidget: Text(
                'Create Task  ',
                style: MyStyle.tx14w.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
          backgroundColor: MyColor.black,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(0),
            // side: const BorderSide(
            //   color: MyColor.greyo,
            //   width: 2,
            // ),
          ),
          // icon: Icons.add,
          // activeIcon: Icons.add,
          animatedIcon: AnimatedIcons.add_event,
          foregroundColor: MyColor.white,
        ),
        bottomNavigationBar: Row(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  currIndex = 0;
                });
                // Navigator.pushNamed(context, homeRoute);
              },
              child: Container(
                height: 70,
                width: 70,
                color: currIndex == 0 ? MyColor.black : MyColor.white,
                child: Center(
                  child: currIndex == 0
                      ? Image.asset(
                          'assets/icons/homeo.png',
                          height: 25,
                          width: 23,
                        )
                      : Image.asset(
                          'assets/icons/home.png',
                          height: 25,
                          width: 23,
                        ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currIndex = 1;
                });
                // Navigator.pushNamed(context, servicePageRoute);
              },
              child: Container(
                height: 70,
                width: 70,
                color: currIndex == 1 ? MyColor.black : MyColor.white,
                child: Center(
                  child: currIndex == 1
                      ? Image.asset(
                          'assets/icons/serviceo.png',
                          height: 25,
                          width: 23,
                        )
                      : Image.asset(
                          'assets/icons/service.png',
                          height: 25,
                          width: 23,
                        ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currIndex = 2;
                });
                // Navigator.pushNamed(context, distributorRoute);
              },
              child: Container(
                height: 70,
                width: 70,
                color: currIndex == 2 ? MyColor.black : MyColor.white,
                child: Center(
                  child: currIndex == 2
                      ? Image.asset(
                          'assets/icons/distributoro.png',
                          height: 25,
                          width: 23,
                        )
                      : Image.asset(
                          'assets/icons/distributor.png',
                          height: 25,
                          width: 23,
                        ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currIndex = 3;
                });
                // Navigator.pushNamed(context, reimbursementRoute);
              },
              child: Container(
                height: 70,
                width: 70,
                color: currIndex == 3 ? MyColor.black : MyColor.white,
                child: Center(
                  child: currIndex == 3
                      ? Image.asset(
                          'assets/icons/reimbursemento.png',
                          height: 30,
                          width: 30,
                        )
                      : Image.asset(
                          'assets/icons/reimbursement.png',
                          height: 30,
                          width: 30,
                        ),
                ),
              ),
            ),
          ],
        ),
        body: pages[currIndex],
      ),
    );
  }

  Future<void> backPressed() async {
    await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: MyColor.white,
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            title: const Center(child: Text("Are you sure?")),
            content: const Text(
              "Do you want to exit an App",
              textAlign: TextAlign.center,
            ),
            // titlePadding: EdgeInsets.zero,
            actionsPadding: EdgeInsets.zero,
            titlePadding: const EdgeInsets.only(top: 15),
            contentPadding: const EdgeInsets.only(bottom: 20),
            actions: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Divider(
                  color: MyColor.black.withOpacity(0.1),
                  // height: 30,
                  endIndent: 0,
                  indent: 0,
                  height: 0,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop(false);
                      },
                      child: const SizedBox(
                        height: 40,
                        child: Center(child: Text("No")),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    // height: 45,
                    child: VerticalDivider(
                      color: MyColor.black.withOpacity(0.1),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        exit(0);
                      },
                      child: const SizedBox(
                        height: 40,
                        child: Center(child: Text("Yes")),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        });
  }
}
