import 'package:colorsoul/constants/routes.dart';
import 'package:flutter/material.dart';

import '../../../values/myColor.dart';
import '../../../values/myStyle.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  bool onClick1 = false;
  bool onClick2 = false;
  bool onClick3 = false;

  var onClick = 'task';

  final List<Map<String, dynamic>> statusList = [
    {
      "Text": 'Active',
      "Color": MyColor.blue,
    },
    {
      "Text": 'Completed',
      "Color": MyColor.green,
    },
    {
      "Text": 'Cancel',
      "Color": MyColor.red,
    },
    {
      "Text": 'Active',
      "Color": MyColor.blue,
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
          'TASKS',
          style: MyStyle.tx16b,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 104,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(
                color: MyColor.grey,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Today Tasks',
                      style: MyStyle.tx12b.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '06/10 ',
                      style: MyStyle.tx20b.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                VerticalDivider(
                  thickness: 0,
                  width: 2,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Total Time',
                      style: MyStyle.tx12b.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '1 Month',
                      style: MyStyle.tx20b.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      onClick = 'task';
                    });
                  },
                  child: Container(
                    height: 33,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(12),
                    color: onClick == 'task' ? MyColor.black : MyColor.grey,
                    child: Center(
                      child: Text(
                        'All Task',
                        style: onClick == 'task'
                            ? MyStyle.tx12w.copyWith(
                                fontWeight: FontWeight.w700,
                              )
                            : MyStyle.tx12b.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      onClick = 'complete';
                    });
                  },
                  child: Container(
                    height: 33,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(12),
                    color: onClick == 'complete' ? MyColor.black : MyColor.grey,
                    child: Center(
                      child: Text(
                        'Completed',
                        style: onClick == 'complete'
                            ? MyStyle.tx12w.copyWith(
                                fontWeight: FontWeight.w700,
                              )
                            : MyStyle.tx12b.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      onClick = 'cancel';
                    });
                  },
                  child: Container(
                    height: 33,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(12),
                    color: onClick == 'cancel' ? MyColor.black : MyColor.grey,
                    child: Center(
                      child: Text(
                        'Cancel',
                        style: onClick == 'cancel'
                            ? MyStyle.tx12w.copyWith(
                                fontWeight: FontWeight.w700,
                              )
                            : MyStyle.tx12b.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(border: Border.all(color: MyColor.grey)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search',
                  style: MyStyle.tx14b.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Icon(Icons.search_outlined)
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'January 2023',
                  textAlign: TextAlign.start,
                  style: MyStyle.tx14b.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),

          //   ListView Builder
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: statusList.length,
              shrinkWrap: false,
              physics: AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, taskDetailRoute);
                  },
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 4,
                        color: MyColor.grey,
                      ),
                    ),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 76,
                          width: 76,
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.all(10),
                          color: MyColor.grey,
                          child: Image.asset(
                            'assets/icons/pad.png',
                            height: 32,
                            width: 32,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Workshop',
                                style: MyStyle.tx16b.copyWith(
                                  fontFamily: 'NotoSansKR-Bold',
                                ),
                              ),
                              Text(
                                '3:00 PM - 5:00 PM',
                                style: MyStyle.tx14b.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins-Medium',
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Status: ',
                                    style: MyStyle.tx14b.copyWith(
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    '${statusList[index]["Text"]}',
                                    style: MyStyle.tx14b.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: statusList[index]["Color"],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
