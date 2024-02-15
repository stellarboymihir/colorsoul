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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
          ),
          child: Text(
            'Today',
            style: MyStyle.tx13b.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto-Medium',
              color: MyColor.darkBlack,
            ),
          ),
        ),
        ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: workingList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.only(
                  left: 14, top: 15, right: 5, bottom: 15),
              margin: const EdgeInsets.fromLTRB(15, 10, 15, 12),
              decoration: BoxDecoration(
                color: MyColor.white,
                boxShadow: [
                  BoxShadow(
                    color: MyColor.black.withOpacity(0.1),
                    blurRadius: 8,
                    spreadRadius: 0.01,
                    offset: const Offset(1.0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'GK Shoppers',
                        style: MyStyle.tx14b.copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins-Medium',
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/map.png',
                            height: 11,
                            width: 11,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Central mall, Surat',
                            style: MyStyle.tx10b.copyWith(fontSize: 9),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, skipRoute);
                    },
                    child: Container(
                      height: 36,
                      width: 80,
                      color: workingList[index]["Color"],
                      child: Center(
                        child: Text(
                          '${workingList[index]["title"]}',
                          style: MyStyle.tx12w.copyWith(
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
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
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
          padding:
              const EdgeInsets.only(left: 14, top: 15, right: 5, bottom: 15),
          margin: const EdgeInsets.fromLTRB(15, 5, 15, 12),
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'GK Shoppers',
                    style: MyStyle.tx14b.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins-Medium',
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/map.png',
                        height: 11,
                        width: 11,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Central mall, Surat',
                        style: MyStyle.tx10b.copyWith(fontSize: 9),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, skipRoute);
                },
                child: Container(
                  height: 36,
                  width: 80,
                  color: MyColor.green,
                  child: Center(
                    child: Text(
                      'Take Order',
                      style: MyStyle.tx12w.copyWith(
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
      ],
    );
  }
}
