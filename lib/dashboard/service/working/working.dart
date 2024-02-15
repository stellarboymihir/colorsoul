import 'package:colorsoul/constants/routes.dart';
import 'package:flutter/material.dart';

import '../../../values/myColor.dart';
import '../../../values/myStyle.dart';

class Working extends StatefulWidget {
  const Working({super.key});

  @override
  State<Working> createState() => _WorkingState();
}

class _WorkingState extends State<Working> {
  final List<Map<String, dynamic>> workingList = [
    {
      "title": 'GK Shoppers',
      "Add": 'Central mall, Surat',
    },
    {
      "title": 'GK Shoppers',
      "Add": 'Central mall, Surat',
    },
    {
      "title": 'GK Shoppers',
      "Add": 'Central mall, Surat',
    },
    {
      "title": 'GK Shoppers',
      "Add": 'Central mall, Surat',
    },
    {
      "title": 'GK Shoppers',
      "Add": 'Central mall, Surat',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: SizedBox(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: workingList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, shoppersRoute);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    margin: const EdgeInsets.only(
                        left: 15, top: 0, right: 12, bottom: 12),
                    decoration: BoxDecoration(
                      color: MyColor.white,
                      boxShadow: [
                        BoxShadow(
                          color: MyColor.black.withOpacity(0.1),
                          blurRadius: 8,
                          spreadRadius: 0.01,
                          offset: const Offset(1.0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'GK Shoppers',
                              style: MyStyle.tx14b.copyWith(
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins-Medium',
                              ),
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/map.png',
                                  height: 12,
                                  width: 12,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                  'Central mall, Surat',
                                  style: MyStyle.tx10b,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 38,
                          width: 38,
                          color: MyColor.grey,
                          child: Padding(
                            padding: const EdgeInsets.all(7.5),
                            child: Image.asset(
                              'assets/icons/call.png',
                              // height: 15,
                              // width: 15,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   width: 2,
                        // ),
                        Container(
                          height: 38,
                          width: 79,
                          color: MyColor.grey,
                          child: Center(
                            child: Text(
                              'Check In',
                              style: MyStyle.tx12b.copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   width: 2,
                        // ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, skipRoute);
                          },
                          child: Container(
                            height: 38,
                            width: 52,
                            color: MyColor.grey,
                            child: Center(
                              child: Text(
                                'Skip',
                                style: MyStyle.tx12b.copyWith(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
