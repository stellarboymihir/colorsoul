import 'package:colorsoul/constants/routes.dart';
import 'package:flutter/material.dart';

import '../../../../values/myColor.dart';
import '../../../../values/myStyle.dart';

class Shoppers extends StatefulWidget {
  const Shoppers({super.key});

  @override
  State<Shoppers> createState() => _ShoppersState();
}

class _ShoppersState extends State<Shoppers> {
  final List<Map<String, dynamic>> shopperList = [
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.white,
        scrolledUnderElevation: 0,
        leading: Container(
          height: 40,
          width: 40,
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.all(12),
          color: MyColor.grey,
          child: const Center(
              child: Icon(
            Icons.arrow_back_ios_new,
            size: 16,
          )),
        ),
        title: const Text(
          'Edit route',
          style: MyStyle.tx16b,
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, checkOutRoute);
            },
            child: Container(
                height: 40,
                width: 108,
                color: MyColor.grey,
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    'Check OUT',
                    style: MyStyle.tx14b.copyWith(
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins-\Bold',
                    ),
                  ),
                )),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/shop.png',
            height: 196,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/map.png',
                  height: 17,
                  width: 17,
                ),
                const Text(
                  ' Location: Central mall, Surat',
                  style: MyStyle.tx12b,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, getStockRoute);
                  },
                  child: Container(
                    height: 50,
                    width: 152,
                    padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    color: MyColor.black,
                    child: const Center(
                      child: Text(
                        'Get Stock',
                        style: MyStyle.tx16w,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  width: 152,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  color: MyColor.black,
                  child: const Center(
                    child: Text(
                      'Get Order',
                      style: MyStyle.tx16w,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, imageRoute);
                  },
                  child: Container(
                    height: 50,
                    width: 152,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    color: MyColor.black,
                    child: Center(
                      child: Image.asset(
                        'assets/icons/img.png',
                        height: 25,
                        width: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: MyColor.grey,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: shopperList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, shoppersRoute);
                    },
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 12),
                      padding: const EdgeInsets.all(10),
                      color: MyColor.white,
                      // padding: const EdgeInsets.all(12.0),
                      // margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Order No : XZD1234',
                                style: MyStyle.tx14b.copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins-Medium',
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '18, Dec 2021',
                                    style: MyStyle.tx12b.copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Roboto-Medium',
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Text(
                                    '9:30 AM ',
                                    style: MyStyle.tx10b,
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
                              height: 31,
                              width: 102,
                              color: MyColor.green,
                              child: Center(
                                child: Text(
                                  'Completed',
                                  style: MyStyle.tx12b.copyWith(
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
          )
        ],
      ),
    );
  }
}
