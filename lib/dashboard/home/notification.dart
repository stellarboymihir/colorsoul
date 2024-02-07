import 'package:flutter/material.dart';

import '../../values/myColor.dart';
import '../../values/myStyle.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  // List Mapp
  final List<Map<String, dynamic>> list = [
    {
      "title": 'You miss Adam s. call',
      "Time": '1 minute ago',
      "isTapped": false,
    },
    {
      "title": 'Next Meeting Adam s.',
      "Time": '18 minute ago',
      "isTapped": false,
    },
    {
      "title": 'New lead Adam s.',
      "Time": '18, Dec 2021',
      "isTapped": false,
    },
    {
      "title": 'Next order Status',
      "Time": '18, Dec 2021',
      "isTapped": false,
    },
    {
      "title": 'Profile Update',
      "Time": '18, Dec 2021',
      "isTapped": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.white,
        leading: Container(
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
        title: Text(
          'Notification',
          style: MyStyle.tx24b.copyWith(
            fontSize: 20,
          ),
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: list.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                list[index]["isTapped"] = !list[index]["isTapped"];
              });
            },
            child: Container(
              color: list[index]["isTapped"] ? MyColor.grey : MyColor.white,
              // height: 100,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${list[index]["title"]}',
                          style: MyStyle.tx14b.copyWith(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins-Bold',
                          ),
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, Consectetur \n adipiscing elit. ',
                          style: MyStyle.tx12b.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '${list[index]["Time"]}',
                          style: MyStyle.tx14b.copyWith(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'NotoSansKR-Medium',
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/icons/dots.png',
                      height: 20,
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
