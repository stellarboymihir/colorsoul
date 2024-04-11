import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

import '../../constants/routes.dart';
import '../../values/myColor.dart';
import '../../values/myStyle.dart';
import 'package:badges/badges.dart' as badge;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        width: MediaQuery.of(context).size.width * 0.6,
        elevation: 0,
        backgroundColor: MyColor.white,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/img11.png',
                      height: 83,
                      width: 83,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Hi Samar',
                      style: MyStyle.tx20b.copyWith(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins-Bold',
                      ),
                    ),
                    Text(
                      'Des 18, 2021',
                      style: MyStyle.tx12b.copyWith(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins-Regular',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ListTile(
                title: Row(
                  children: [
                    Image.asset(
                      'assets/icons/photo.png',
                      height: 24,
                      width: 24,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Profile',
                      style: MyStyle.tx18b.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins-Medium',
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, profileRoute);
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Image.asset(
                      'assets/icons/order.png',
                      height: 24,
                      width: 24,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Orders',
                      style: MyStyle.tx18b.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins-Medium',
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, ordersRoute);
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Image.asset(
                      'assets/icons/media.png',
                      height: 24,
                      width: 24,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Media center',
                      style: MyStyle.tx18b.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins-Medium',
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, mediaRoute);
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Image.asset(
                      'assets/icons/setting.png',
                      height: 24,
                      width: 24,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Setting',
                      style: MyStyle.tx18b.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins-Medium',
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, settingRoute);
                },
              ),
              Spacer(),
              InkWell(
                onTap: () async {
                  SharedPreferences preferences =
                      await SharedPreferences.getInstance();
                  preferences.clear();
                  Navigator.pushNamedAndRemoveUntil(
                      context, signInPageRoute, (route) => false);
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: MyColor.black,
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: Center(
                    child: Text(
                      'Log Out',
                      style: MyStyle.tx20W
                        ..copyWith(
                            fontFamily: 'Poppins-SemiBold', fontSize: 13),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 10),
                child: Row(
                  children: [
                    Builder(builder: (context) {
                      return InkWell(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                          // Navigator.pushNamed(context, profileRoute);
                        },
                        child: Image.asset(
                          'assets/images/img11.png',
                          width: 35,
                          height: 35,
                        ),
                      );
                    }),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi Samar',
                          textAlign: TextAlign.start,
                          style: MyStyle.tx20b.copyWith(
                              fontFamily: 'Poppins-Bold', fontSize: 19),
                        ),
                        const Text(
                          'Dec 18, 2021',
                          textAlign: TextAlign.start,
                          style: MyStyle.tx12b,
                        ),
                      ],
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, attendanceRoute);
                      },
                      child: badge.Badge(
                        showBadge: true,
                        position: badge.BadgePosition.topEnd(top: -5, end: -4),
                        badgeStyle: const badge.BadgeStyle(
                          shape: badge.BadgeShape.circle,
                          badgeColor: MyColor.green,
                          padding: EdgeInsets.all(6.5),
                        ),
                        child: Container(
                          height: 40,
                          color: MyColor.grey,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Center(
                            child: Text(
                              'START',
                              style: MyStyle.tx14b.copyWith(
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins-ExtraBold',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, notificationRoute);
                      },
                      child: Container(
                        height: 40,
                        color: MyColor.grey,
                        margin: const EdgeInsets.only(right: 17, left: 10),
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/icons/bell.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //  Middle layer
              Container(
                margin: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: MyColor.white,
                  boxShadow: [
                    BoxShadow(
                      color: MyColor.black.withOpacity(0.1),
                      blurRadius: 5,
                      spreadRadius: 0.01,
                      offset: const Offset(1, 8),
                    ),
                    BoxShadow(
                      color: MyColor.black.withOpacity(0.1),
                      blurRadius: 5,
                      spreadRadius: 0.01,
                      offset: const Offset(-1, -1),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'January Target',
                            style: MyStyle.tx14b,
                          ),
                          Text(
                            'View all',
                            style: MyStyle.tx14b.copyWith(
                              color: MyColor.blue,
                            ),
                          )
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/graph.png',
                      height: 140,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 12),
                padding: const EdgeInsets.only(left: 12),
                color: MyColor.black,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/like.png',
                      height: 20,
                      width: 20,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      ' 65% OF YOUR WORKING IS LOOK GOOD',
                      style: MyStyle.tx14w.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins-Medium',
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'OVERVIEW',
                  textAlign: TextAlign.start,
                  style: MyStyle.tx14b.copyWith(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins-Bold',
                  ),
                ),
              ),

              //  1st Row
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(
                          left: 8, right: 4, top: 0, bottom: 8),
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 8, bottom: 0),
                      decoration: BoxDecoration(
                        color: MyColor.white,
                        boxShadow: [
                          BoxShadow(
                            color: MyColor.black.withOpacity(0.1),
                            blurRadius: 5,
                            spreadRadius: 0.01,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            color: MyColor.black,
                            child: Center(
                              child: Image.asset(
                                'assets/icons/notepad.png',
                                height: 12,
                                width: 12,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Task',
                                  style: MyStyle.tx12b.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins-Medium',
                                  ),
                                ),
                                const SizedBox(height: 6),
                                const Divider(
                                  indent: 82,
                                  thickness: 1,
                                  height: 0,
                                  color: MyColor.green,
                                ),
                                const SizedBox(height: 24),
                                Text(
                                  '120',
                                  style: MyStyle.tx20b.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins-Regular',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(
                          left: 4, right: 12, top: 0, bottom: 8),
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 8, bottom: 0),
                      decoration: BoxDecoration(
                        color: MyColor.white,
                        boxShadow: [
                          BoxShadow(
                            color: MyColor.black.withOpacity(0.1),
                            blurRadius: 5,
                            spreadRadius: 0.01,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            color: MyColor.black,
                            child: Center(
                              child: Image.asset(
                                'assets/icons/calc.png',
                                height: 12,
                                width: 12,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Reimbursement',
                                  textAlign: TextAlign.end,
                                  style: MyStyle.tx12b.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    fontFamily: 'Poppins-Medium',
                                  ),
                                ),
                                const SizedBox(height: 6),
                                const Divider(
                                  indent: 82,
                                  thickness: 1,
                                  height: 0,
                                  color: MyColor.red,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  '120',
                                  style: MyStyle.tx20b.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins-Regular',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //  2nd Row
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(
                          left: 8, right: 4, top: 0, bottom: 8),
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 8, bottom: 0),
                      decoration: BoxDecoration(
                        color: MyColor.white,
                        boxShadow: [
                          BoxShadow(
                            color: MyColor.black.withOpacity(0.1),
                            blurRadius: 5,
                            spreadRadius: 0.01,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            color: MyColor.black,
                            child: Center(
                              child: Image.asset(
                                'assets/icons/store.png',
                                height: 12,
                                width: 12,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Roots',
                                  style: MyStyle.tx12b.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins-Medium',
                                  ),
                                ),
                                const SizedBox(height: 6),
                                const Divider(
                                  indent: 82,
                                  thickness: 1,
                                  height: 0,
                                  color: MyColor.yellow,
                                ),
                                const SizedBox(height: 24),
                                Text(
                                  '489',
                                  style: MyStyle.tx20b.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins-Regular',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(
                          left: 4, right: 12, top: 0, bottom: 8),
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 8, bottom: 0),
                      decoration: BoxDecoration(
                        color: MyColor.white,
                        boxShadow: [
                          BoxShadow(
                            color: MyColor.black.withOpacity(0.1),
                            blurRadius: 5,
                            spreadRadius: 0.01,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            color: MyColor.black,
                            child: Center(
                              child: Image.asset(
                                'assets/icons/Package.png',
                                height: 12,
                                width: 12,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Order',
                                  style: MyStyle.tx12b.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    fontFamily: 'Poppins-Medium',
                                  ),
                                ),
                                const SizedBox(height: 6),
                                const Divider(
                                  indent: 82,
                                  thickness: 1,
                                  height: 0,
                                  color: MyColor.blue,
                                ),
                                const SizedBox(height: 24),
                                Text(
                                  '489',
                                  style: MyStyle.tx20b.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins-Regular',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),
              //   Reimbursement
              Container(
                // width: MediaQuery.of(context).size.width,
                color: MyColor.grey,
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //  Reimbursement
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Reimbursement',
                          textAlign: TextAlign.start,
                          style: MyStyle.tx14b.copyWith(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins-Medium',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 8,
                              width: 8,
                              padding: const EdgeInsets.all(12),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: MyColor.green,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Approve',
                                  style: MyStyle.tx12b.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  '₹3,500',
                                  style: MyStyle.tx14b.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Poppins-SemiBold',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 8,
                              width: 8,
                              padding: const EdgeInsets.all(12),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: MyColor.yellow,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Reimbursement',
                                  style: MyStyle.tx12b.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  '₹5,000',
                                  style: MyStyle.tx14b.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Poppins-SemiBold',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                    // Image
                    Image.asset(
                      'assets/images/circle.png',
                      height: 127,
                      width: 127,
                    ),
                    // SfCircularChart(
                    //   title: ChartTitle(text: ''),
                    //     series: _getRadialBarDefaultSeries();
                    //   tooltipBehavior: TooltipBehavior(
                    //       enable: true, format: 'point.x : point.ym'),
                    // )
                  ],
                ),
              ),

              //   Upcoming Task
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Task',
                      style: MyStyle.tx14b.copyWith(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins-Bold',
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, taskPageRoute);
                      },
                      child: Text(
                        'View all',
                        style: MyStyle.tx14b.copyWith(
                          fontWeight: FontWeight.w400,
                          color: MyColor.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        // height: 70,
                        width: 230,
                        decoration: BoxDecoration(
                          color: MyColor.white,
                          border: Border.all(
                            color: MyColor.grey,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: MyColor.black.withOpacity(0.1),
                              blurRadius: 5,
                              spreadRadius: 0.01,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(6.0),
                        margin: const EdgeInsets.symmetric(
                          horizontal: 12,
                        ),

                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              color: MyColor.grey,
                              margin: const EdgeInsets.all(6),
                              child: Center(
                                child: Image.asset(
                                  'assets/icons/pad.png',
                                  height: 24,
                                  width: 24,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Workshop',
                                  style: MyStyle.tx16b,
                                ),
                                Text(
                                  '3:00 PM - 5:00 PM',
                                  style: MyStyle.tx14b.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
