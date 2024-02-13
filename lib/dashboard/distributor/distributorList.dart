import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/material.dart';

import '../../values/myColor.dart';

class DistributorList extends StatefulWidget {
  const DistributorList({super.key});

  @override
  State<DistributorList> createState() => _DistributorListState();
}

class _DistributorListState extends State<DistributorList> {
  String selectedValue = 'Nothing Selected';
  final List<Map<String, dynamic>> distribList = [
    {
      "title": 'GK Shoppers',
      "Add": 'Central mall, Surat',
      'DistributorList': 'selectedMenu',
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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: distribList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        // Navigator.pushNamed(context, shoppersRoute);
                      },
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(8, 12, 4, 12),
                        margin: const EdgeInsets.only(
                            left: 0, top: 0, right: 0, bottom: 15),
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
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
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
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        'Status',
                                        style: MyStyle.tx10b,
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        'Active',
                                        style: MyStyle.tx10b.copyWith(
                                          color: MyColor.green,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            PopupMenuButton<String>(
                              elevation: 0,
                              initialValue: selectedValue,
                              color: MyColor.white,
                              shadowColor: MyColor.black,
                              onSelected: (String value) {
                                setState(() {
                                  selectedValue = value;
                                });
                              },
                              icon: Image.asset(
                                'assets/icons/dots.png',
                                height: 22,
                                width: 22,
                              ),
                              itemBuilder: (BuildContext context) =>
                                  <PopupMenuEntry<String>>[
                                PopupMenuItem(
                                  value: 'Call',
                                  child: Row(
                                    children: [
                                      const Expanded(child: Text('Call')),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        color: MyColor.grey,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                            'assets/icons/call.png',
                                            height: 22,
                                            width: 22,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                PopupMenuItem(
                                  value: 'Edit',
                                  child: Row(
                                    children: [
                                      const Expanded(child: Text('Edit')),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        color: MyColor.grey,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                            'assets/icons/pencil.png',
                                            height: 22,
                                            width: 22,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
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
        ),
      ),
    );
  }
}
