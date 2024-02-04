import 'package:flutter/material.dart';

import '../../../../../values/myColor.dart';
import '../../../../../values/myStyle.dart';

class CreateRouteFloating extends StatefulWidget {
  const CreateRouteFloating({super.key});

  @override
  State<CreateRouteFloating> createState() => _CreateRouteFloatingState();
}

class _CreateRouteFloatingState extends State<CreateRouteFloating> {
  bool onClick = false;
  final List<Map<String, dynamic>> list = [
    {
      "title": 'GK Shoppers Stor',
      "Time": '9:30 AM ',
    },
    {
      "title": 'GK Shoppers Stor',
      "Time": '9:30 AM ',
    },
    {
      "title": 'GK Shoppers Stor',
      "Time": '9:30 AM ',
    },
    {
      "title": 'GK Shoppers Stor',
      "Time": '9:30 AM ',
    },
    {
      "title": 'GK Shoppers Stor',
      "Time": '9:30 AM ',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: MyColor.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.symmetric(horizontal: 12),
            child: Image.asset(
              'assets/icons/back.png',
              height: 40,
              width: 40,
            ),
          ),
        ),
        title: Text(
          'Create Route',
          style: MyStyle.tx16b.copyWith(
            fontFamily: 'Poppins-Bold',
          ),
        ),
      ),
      body: Column(
        children: [
          ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: list.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return StatefulBuilder(builder: (context, setState) {
                return Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(12.0),
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 20.0),
                  color: MyColor.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'GK Shoppers Store',
                            style: MyStyle.tx18b,
                          ),
                          Row(
                            children: [
                              Text(
                                '18, Dec 2021',
                                style: MyStyle.tx12b.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                '9:30 AM',
                                style: MyStyle.tx12b.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            list[index]['checked'] =
                                !(list[index]['checked'] ?? false);
                            onClick = !(onClick ?? false);
                          });
                        },
                        child: onClick
                            ? Image.asset(
                                'assets/icons/checkbox.png',
                                height: 25,
                                width: 25,
                              )
                            : Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(
                                    color: MyColor.black,
                                    width: 2,
                                  ),
                                ),
                              ),
                      ),
                    ],
                  ),
                );
              });
            },
          ),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 65,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: MediaQuery.of(context).size.width,
              color: MyColor.black,
              child: const Center(
                child: Text(
                  'Submit',
                  style: MyStyle.tx20W,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
