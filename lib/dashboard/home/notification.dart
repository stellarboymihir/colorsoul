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
    },
    {
      "title": 'Next Meeting Adam s.',
      "Time": '18 minute ago',
    },
    {
      "title": 'New lead Adam s.',
      "Time": '18, Dec 2021',
    },
    {
      "title": 'Next order Status',
      "Time": '18, Dec 2021',
    },
    {
      "title": 'Profile Update',
      "Time": '18, Dec 2021',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.white,
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
          'Notification',
          style: MyStyle.tx24b,
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: list.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            // height: 100,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${list[index]["title"]}',
                  style: MyStyle.tx14b.copyWith(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'NotoSansKR-SemiBold',
                  ),
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
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
          );
        },
      ),
    );
  }
}
