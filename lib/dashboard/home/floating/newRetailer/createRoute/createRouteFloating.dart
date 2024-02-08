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
            height: 36,
            width: 36,
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.all(12),
            color: MyColor.grey,
            child: const Center(
                child: Icon(
              Icons.arrow_back_ios_new,
              size: 16,
            )),
          ),
        ),
        title: Text(
          'Create Route',
          style: MyStyle.tx16b.copyWith(),
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
                  // height: 70,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.symmetric(
                      vertical: 6.0, horizontal: 12.0),
                  color: MyColor.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'GK Shoppers Store',
                            style: MyStyle.tx18b.copyWith(
                              fontSize: 16,
                              fontFamily: 'Poppins-Bold',
                            ),
                          ),
                          SizedBox(
                            height: 3,
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
                                height: 18,
                                width: 18,
                              )
                            : Container(
                                height: 18,
                                width: 18,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(
                                    color: MyColor.black,
                                    width: 1,
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
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          height: 50,
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          width: MediaQuery.of(context).size.width,
          color: MyColor.black,
          child: Center(
            child: Text(
              'Submit',
              style: MyStyle.tx20W
                  .copyWith(fontFamily: 'Poppins-SemiBold', fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
