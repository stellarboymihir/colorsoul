import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/material.dart';

import '../../values/myColor.dart';

class DistributorList extends StatefulWidget {
  const DistributorList({super.key});

  @override
  State<DistributorList> createState() => _DistributorListState();
}

class _DistributorListState extends State<DistributorList> {
  List<bool> isChecked = List.filled(2, false);
  String selectedValue = 'Nothing Selected';
  final List<Map<String, dynamic>> distribList = [
    {
      "title": 'GK Shoppers',
      "Add": 'Central mall, Surat',
      'DistributorList': 'selectedMenu',
      'isChecked': false,
    },
    {
      "title": 'GK Shoppers',
      "Add": 'Central mall, Surat',
      'DistributorList': 'selectedMenu',
      'isChecked': false,
    },
    {
      "title": 'GK Shoppers',
      "Add": 'Central mall, Surat',
      'DistributorList': 'selectedMenu',
      'isChecked': false,
    },
    {
      "title": 'GK Shoppers',
      "Add": 'Central mall, Surat',
      'DistributorList': 'selectedMenu',
      'isChecked': false,
    },
    {
      "title": 'GK Shoppers',
      "Add": 'Central mall, Surat',
      'DistributorList': 'selectedMenu',
      'isChecked': false,
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
                        // padding: const EdgeInsets.only(top: 6, bottom: 1),
                        margin: const EdgeInsets.only(
                          bottom: 15,
                        ),
                        decoration: BoxDecoration(
                          color: MyColor.white,
                          boxShadow: [
                            BoxShadow(
                              color: MyColor.black.withOpacity(0.1),
                              blurRadius: 5,
                              spreadRadius: 0.01,
                              offset: const Offset(1.0, 4),
                            ),
                            BoxShadow(
                              color: MyColor.black.withOpacity(0.1),
                              blurRadius: 3,
                              spreadRadius: 0.01,
                              offset: const Offset(-1.0, -1),
                            ),
                          ],
                        ),
                        child: ExpansionTile(
                          title: Row(
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
                            ],
                          ),

                          // initiallyExpanded: true,
                          tilePadding: const EdgeInsets.all(0),
                          trailing: PopupMenuButton<String>(
                            elevation: 0,
                            // offset: Offset(0, 40),
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
                                height: 35,
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
                                height: 35,
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
                          shape: Border.all(color: MyColor.grey),
                          collapsedBackgroundColor: MyColor.white,
                          backgroundColor: MyColor.white,
                          childrenPadding: EdgeInsets.all(0),
                          onExpansionChanged: (bool expanded) {
                            setState(() {});
                          },
                          children: <Widget>[
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              color: MyColor.grey,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Person Name',
                                        style: MyStyle.tx12b.copyWith(
                                          fontFamily: 'Poppins-Medium',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        'Sagar Sham',
                                        style: MyStyle.tx12b.copyWith(
                                          fontFamily: 'Poppins-Medium',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Phone',
                                        style: MyStyle.tx12b.copyWith(
                                          fontFamily: 'Poppins-Medium',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        '(+91) 85649 58779',
                                        style: MyStyle.tx12b.copyWith(
                                          fontFamily: 'Poppins-Medium',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Store Timings',
                                        style: MyStyle.tx12b.copyWith(
                                          fontFamily: 'Poppins-Medium',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        '09:00 AM - 10:00 PM',
                                        style: MyStyle.tx12b.copyWith(
                                          fontFamily: 'Poppins-Medium',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            )
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
