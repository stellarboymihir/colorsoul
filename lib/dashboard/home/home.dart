import 'package:flutter/material.dart';

import '../../constants/routes.dart';
import '../../values/myColor.dart';
import '../../values/myStyle.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.white,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset(
              'assets/images/samar.png',
              width: 40,
              height: 40,
            ),
            SizedBox(width: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi Samar',
                  textAlign: TextAlign.start,
                  style: MyStyle.tx20b,
                ),
                Text(
                  'Dec 18, 2021',
                  textAlign: TextAlign.start,
                  style: MyStyle.tx12b,
                ),
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, attendanceRoute);
              },
              child: Container(
                height: 40,
                color: MyColor.grey,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, notificationRoute);
              },
              child: Container(
                height: 40,
                color: MyColor.grey,
                margin: const EdgeInsets.all(8.0),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Bar
              // Row(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.symmetric(
              //           horizontal: 12.0, vertical: 10),
              //       child: Image.asset(
              //         'assets/images/samar.png',
              //         width: 40,
              //         height: 40,
              //       ),
              //     ),
              //     const Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           'Hi Samar',
              //           textAlign: TextAlign.start,
              //           style: MyStyle.tx20b,
              //         ),
              //         Text(
              //           'Dec 18, 2021',
              //           textAlign: TextAlign.start,
              //           style: MyStyle.tx12b,
              //         ),
              //       ],
              //     ),
              //     const Spacer(),
              //     InkWell(
              //       onTap: () {
              //         Navigator.pushNamed(context, attendanceRoute);
              //       },
              //       child: Container(
              //         height: 40,
              //         color: MyColor.grey,
              //         padding: const EdgeInsets.symmetric(
              //             horizontal: 20, vertical: 10),
              //         child: Center(
              //           child: Text(
              //             'START',
              //             style: MyStyle.tx14b.copyWith(
              //               fontWeight: FontWeight.w700,
              //               fontFamily: 'Poppins-ExtraBold',
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //     InkWell(
              //       onTap: () {
              //         Navigator.pushNamed(context, notificationRoute);
              //       },
              //       child: Container(
              //         height: 40,
              //         color: MyColor.grey,
              //         margin: const EdgeInsets.all(8.0),
              //         padding: const EdgeInsets.all(10),
              //         child: Image.asset(
              //           'assets/icons/bell.png',
              //           height: 20,
              //           width: 20,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),

              //  Middle layer
              Container(
                height: 208,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    Row(
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
                    Image.asset(
                      'assets/images/graph.png',
                    ),
                  ],
                ),
              ),

              Container(
                height: 57,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 12),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                color: MyColor.black,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/like.png',
                      height: 28,
                      width: 28,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      '65% OF YOUR WORKING IS LOOK GOOD',
                      style: MyStyle.tx14w.copyWith(
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
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(
                          left: 8, right: 4, top: 0, bottom: 8),
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 8, bottom: 0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: MyColor.grey,
                        ),
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
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins-Medium',
                                  ),
                                ),
                                const SizedBox(
                                  width: 50,
                                  child: Divider(
                                    thickness: 1,
                                    color: MyColor.red,
                                  ),
                                ),
                                Text(
                                  '120',
                                  style: MyStyle.tx20b.copyWith(
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
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(
                          left: 4, right: 8, top: 0, bottom: 8),
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 8, bottom: 0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: MyColor.grey,
                        ),
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
                                  style: MyStyle.tx12b.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    fontFamily: 'Poppins-Medium',
                                  ),
                                ),
                                const SizedBox(
                                  width: 50,
                                  child: Divider(
                                    thickness: 1,
                                    color: MyColor.red,
                                  ),
                                ),
                                Text(
                                  '120',
                                  style: MyStyle.tx20b.copyWith(
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
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(
                          left: 8, right: 4, top: 0, bottom: 8),
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 8, bottom: 0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: MyColor.grey,
                        ),
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
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins-Medium',
                                  ),
                                ),
                                const SizedBox(
                                  width: 50,
                                  child: Divider(
                                    thickness: 1,
                                    color: MyColor.red,
                                  ),
                                ),
                                Text(
                                  '489',
                                  style: MyStyle.tx20b.copyWith(
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
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(
                          left: 4, right: 8, top: 0, bottom: 8),
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 8, bottom: 0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: MyColor.grey,
                        ),
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
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    fontFamily: 'Poppins-Medium',
                                  ),
                                ),
                                const SizedBox(
                                  width: 50,
                                  child: Divider(
                                    thickness: 1,
                                    color: MyColor.red,
                                  ),
                                ),
                                Text(
                                  '489',
                                  style: MyStyle.tx20b.copyWith(
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

              //   Reimbursement
              Container(
                height: 160,
                width: MediaQuery.of(context).size.width,
                color: MyColor.grey,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Reimbursement',
                            textAlign: TextAlign.start,
                            style: MyStyle.tx14b.copyWith(
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins-Medium',
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 8,
                                width: 8,
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
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 8,
                                width: 8,
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
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/circle.png',
                        height: 127,
                        width: 127,
                      ),
                    ],
                  ),
                ),
              ),

              //   Upcoming Task
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Task',
                      style: MyStyle.tx14b.copyWith(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins-SemiBold',
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
                height: 80,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 74,
                        width: 230,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: MyColor.grey,
                            width: 2,
                          ),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 6),
                        child: Row(
                          children: [
                            Container(
                              height: 56,
                              width: 56,
                              color: MyColor.grey,
                              padding: EdgeInsets.all(6),
                              child: Image.asset(
                                'assets/icons/pad.png',
                                height: 32,
                                width: 32,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
