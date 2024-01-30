import 'package:colorsoul/dashboard/reimbursement/reimbursement.dart';
import 'package:colorsoul/dashboard/service/service.dart';
import 'package:colorsoul/values/myColor.dart';
import 'package:flutter/material.dart';

import 'distributor/distributor.dart';
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
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
