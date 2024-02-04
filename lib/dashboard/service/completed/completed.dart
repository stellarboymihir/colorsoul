import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/material.dart';

import '../../../values/myColor.dart';

class Completed extends StatefulWidget {
  const Completed({super.key});

  @override
  State<Completed> createState() => _CompletedState();
}

class _CompletedState extends State<Completed> {
  final List<Map<String, dynamic>> workingList = [
    {
      "title": 'Get Stock',
      "Color": MyColor.yellow,
    },
    {
      "title": 'Skip',
      "Color": MyColor.red,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
          child: Row(
            children: [
              Text(
                'Today',
                style: MyStyle.tx13b.copyWith(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto-Medium',
                  color: MyColor.darkBlack,
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: workingList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
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
                margin: EdgeInsets.symmetric(vertical: 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                  side: const BorderSide(
                    color: MyColor.grey,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    Spacer(),
                    InkWell(
                      onTap: () {
                        // Navigator.pushNamed(context, skipRoute);
                      },
                      child: Container(
                        height: 38,
                        width: 102,
                        color: workingList[index]["Color"],
                        child: Center(
                          child: Text(
                            '${workingList[index]["title"]}',
                            style: MyStyle.tx12w.copyWith(
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
            );
          },
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
          child: Row(
            children: [
              Text(
                '15 Jan, 2023',
                style: MyStyle.tx13b.copyWith(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto-Medium',
                  color: MyColor.darkBlack,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 80,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: MyColor.grey
                    .withOpacity(0.7), // Change this to adjust the shadow color
                blurRadius: 5, // Change this to adjust the blur
                spreadRadius: 0.01, // Change this to adjust the spread
                offset:
                    const Offset(0.0, 10), // Change this to adjust the offset
              ),
            ],
          ),
          // padding: const EdgeInsets.all(12.0),
          // margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
          child: Card(
            color: MyColor.white,
            elevation: 0.1,
            shadowColor: MyColor.grey,
            // margin: EdgeInsets.symmetric(horizontal: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1),
              side: const BorderSide(
                color: MyColor.grey,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                Spacer(),
                InkWell(
                  onTap: () {
                    // Navigator.pushNamed(context, skipRoute);
                  },
                  child: Container(
                    height: 38,
                    width: 102,
                    color: MyColor.green,
                    child: Center(
                      child: Text(
                        ' Take Order',
                        style: MyStyle.tx12w.copyWith(
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
      ],
    );
  }
}
