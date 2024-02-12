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
      "title": 'Completed',
      "Color": MyColor.green,
    },
    {
      "title": 'Cancel',
      "Color": MyColor.red,
    },
    {
      "title": 'Completed',
      "Color": MyColor.green,
    },
    {
      "title": 'Cancel',
      "Color": MyColor.red,
    },
    {
      "title": 'Completed',
      "Color": MyColor.green,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.white,
        scrolledUnderElevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 36,
            width: 36,
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.fromLTRB(15, 12, 8, 12),
            color: MyColor.grey,
            child: const Center(
                child: Icon(
              Icons.arrow_back_ios_new,
              size: 16,
            )),
          ),
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
                height: 36,
                // width: 108,
                color: MyColor.grey,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Center(
                  child: Text(
                    'Check Out',
                    style: MyStyle.tx14b.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins-Bold',
                    ),
                  ),
                )),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/shop.png',
            height: 190,
            width: MediaQuery.of(context).size.width,
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/map.png',
                  height: 14,
                  width: 14,
                  fit: BoxFit.fill,
                ),
                Text(
                  ' Location: Central mall, Surat',
                  style: MyStyle.tx12b.copyWith(
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, getStockRoute);
                    },
                    child: Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 7),
                      color: MyColor.black,
                      child: Center(
                        child: Text(
                          'Get Stock',
                          style: MyStyle.tx16w.copyWith(fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, getOrderRoute);
                    },
                    child: Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 7),
                      color: MyColor.black,
                      child: Center(
                        child: Text(
                          'Get Order',
                          style: MyStyle.tx16w.copyWith(fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, imageRoute);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    color: MyColor.black,
                    child: Center(
                      child: Image.asset(
                        'assets/icons/img.png',
                        height: 16,
                        width: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: MyColor.grey,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order List',
                      style: MyStyle.tx14b.copyWith(
                          fontFamily: 'Poppins-SemiBold',
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: shopperList.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, shoppersRoute);
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.fromLTRB(0, 6, 0, 6),
                            padding: const EdgeInsets.fromLTRB(6, 14, 6, 14),
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
                                          style: MyStyle.tx12b,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      // Navigator.pushNamed(context, skipRoute);
                                    },
                                    child: Container(
                                      // width: 90,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 8),
                                      color: shopperList[index]["Color"],
                                      child: Center(
                                        child: Text(
                                          '${shopperList[index]["title"]}',
                                          style: MyStyle.tx12w.copyWith(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700,
                                          ),
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
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
