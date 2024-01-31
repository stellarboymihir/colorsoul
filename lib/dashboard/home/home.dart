import 'package:flutter/material.dart';

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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Bar
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 10),
                  child: Image.asset(
                    'assets/images/samar.png',
                    width: 40,
                    height: 40,
                  ),
                ),
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
                Container(
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
                Container(
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
              ],
            ),

            //  Middle layer
            Container(
              height: 208,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
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
              margin: EdgeInsets.symmetric(horizontal: 12),
              padding: EdgeInsets.symmetric(horizontal: 12),
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'OVERVIEW',
                textAlign: TextAlign.start,
                style: MyStyle.tx14b.copyWith(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins-Bold',
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(
                        left: 12, right: 6, top: 0, bottom: 8),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: MyColor.grey,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Total Tasks',
                              style: MyStyle.tx12b,
                            ),
                            SizedBox(
                              width: 50,
                              child: Divider(
                                thickness: 1,
                                color: MyColor.green,
                              ),
                            ),
                            Text(
                              '130',
                              style: MyStyle.tx20b.copyWith(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins-Medium',
                              ),
                            ),
                          ],
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
                        left: 6, right: 12, top: 0, bottom: 8),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: MyColor.grey,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Total Tasks',
                              style: MyStyle.tx12b,
                            ),
                            SizedBox(
                              width: 50,
                              child: Divider(
                                thickness: 1,
                                color: MyColor.green,
                              ),
                            ),
                            Text(
                              '130',
                              style: MyStyle.tx20b.copyWith(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins-Medium',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(left: 12, right: 6, top: 8),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: MyColor.grey,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Total Tasks',
                              style: MyStyle.tx12b,
                            ),
                            SizedBox(
                              width: 50,
                              child: Divider(
                                thickness: 1,
                                color: MyColor.green,
                              ),
                            ),
                            Text(
                              '130',
                              style: MyStyle.tx20b.copyWith(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins-Medium',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(left: 6, right: 12, top: 8),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: MyColor.grey,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Total Tasks',
                              style: MyStyle.tx12b,
                            ),
                            SizedBox(
                              width: 50,
                              child: Divider(
                                thickness: 1,
                                color: MyColor.green,
                              ),
                            ),
                            Text(
                              '130',
                              style: MyStyle.tx20b.copyWith(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins-Medium',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
