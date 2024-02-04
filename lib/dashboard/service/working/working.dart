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
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: workingList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, shoppersRoute);
                },
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: MyColor.grey.withOpacity(
                            0.7), // Change this to adjust the shadow color
                        blurRadius: 5, // Change this to adjust the blur
                        spreadRadius: 0.01, // Change this to adjust the spread
                        offset: const Offset(
                            0.0, 10), // Change this to adjust the offset
                      ),
                    ],
                  ),
                  // padding: const EdgeInsets.all(12.0),
                  // margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                  child: Card(
                    color: MyColor.white,
                    elevation: 0.1,
                    shadowColor: MyColor.grey,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1),
                      side: const BorderSide(
                        color: MyColor.grey,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
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
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          height: 38,
                          width: 38,
                          color: MyColor.grey,
                          padding: EdgeInsets.all(8),
                          child: Image.asset(
                            'assets/icons/call.png',
                            height: 20,
                            width: 20,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          height: 38,
                          width: 79,
                          color: MyColor.grey,
                          child: Center(
                            child: Text(
                              'Check In',
                              style: MyStyle.tx12b.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
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
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
