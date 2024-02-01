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
    Home(),
    const ServicePage(),
    const Distributor(),
    const Reimbursement(),
  ];

  List<bool> onClick = <bool>[false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: SpeedDial(
        spaceBetweenChildren: 5,
        spacing: 4,
        childMargin: const EdgeInsets.all(10),
        overlayColor: MyColor.black,
        children: [
          SpeedDialChild(
            onTap: () {
              Navigator.pushNamed(context, reimbursementPageRoute);
            },
            backgroundColor: MyColor.white,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            child: Image.asset(
              'assets/icons/pad.png',
              height: 24,
              width: 24,
            ),
            labelWidget: Text(
              'Reimbursement  ',
              style: MyStyle.tx14w.copyWith(
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
              height: 24,
              width: 24,
            ),
            labelWidget: Text(
              'Create Route  ',
              style: MyStyle.tx14w.copyWith(
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
              height: 24,
              width: 24,
            ),
            labelWidget: Text(
              'Add new distributor/Retailer  ',
              style: MyStyle.tx14w.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
        backgroundColor: MyColor.black,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(0),
          side: const BorderSide(
            color: MyColor.greyo,
            width: 2,
          ),
        ),
        child: const Icon(
          Icons.add,
          color: MyColor.white,
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: (value) {
      //     setState(() {
      //       currIndex = value;
      //     });
      //   },
      //   // backgroundColor: MyColor.black,
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: MyColor.black,
      //   selectedItemColor: MyColor.black,
      //   unselectedItemColor: MyColor.white,
      //   currentIndex: currIndex,
      //   items: [
      //     // Home
      //     BottomNavigationBarItem(
      //       label: 'Home',
      //       icon: Image.asset(
      //         'assets/icons/home.png',
      //         height: 25,
      //         width: 23,
      //       ),
      //       activeIcon: Image.asset(
      //         'assets/icons/homeo.png',
      //         height: 25,
      //         width: 23,
      //       ),
      //     ),
      //
      //     // Service
      //     BottomNavigationBarItem(
      //       label: 'Service',
      //       icon: Image.asset(
      //         'assets/icons/serviceo.png',
      //         height: 25,
      //         width: 23,
      //       ),
      //       activeIcon: Image.asset(
      //         'assets/icons/service.png',
      //         height: 25,
      //         width: 23,
      //       ),
      //     ),
      //
      //     // Distributor
      //     // BottomNavigationBarItem(
      //     //   label: 'Service',
      //     //   icon: Image.asset(
      //     //     'assets/icons/distributor.png',
      //     //     height: 25,
      //     //     width: 23,
      //     //   ),
      //     //   activeIcon: Image.asset(
      //     //     'assets/icons/distributoro.png',
      //     //     height: 25,
      //     //     width: 23,
      //     //   ),
      //     // ),
      //     //
      //     // // Reimbursement
      //     // BottomNavigationBarItem(
      //     //   label: 'reimbursement',
      //     //   icon: Image.asset(
      //     //     'assets/icons/service.png',
      //     //     height: 25,
      //     //     width: 23,
      //     //   ),
      //     //   activeIcon: Image.asset(
      //     //     'assets/icons/reimbursemento.png',
      //     //     height: 25,
      //     //     width: 23,
      //     //   ),
      //     // ),
      //   ],
      // ),
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
    );
  }
}
