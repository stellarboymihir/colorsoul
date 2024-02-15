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
  TextEditingController searchController = TextEditingController();

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
    {
      "Text": 'Active',
      "Color": MyColor.blue,
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
        scrolledUnderElevation: 0,
        backgroundColor: MyColor.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.fromLTRB(15, 10, 0, 10),
            color: MyColor.grey,
            child: const Center(
                child: Icon(
              Icons.arrow_back_ios_new,
              size: 16,
            )),
          ),
        ),
        leadingWidth: 50,
        title: const Text(
          'TASKS',
          style: MyStyle.tx16b,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 85,
              width: MediaQuery.of(context).size.width,
              // margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: MyColor.white,
                boxShadow: [
                  BoxShadow(
                    color: MyColor.black.withOpacity(0.1),
                    blurRadius: 5,
                    spreadRadius: 0.01,
                    offset: const Offset(1, 5),
                  ),
                  BoxShadow(
                    color: MyColor.black.withOpacity(0.1),
                    blurRadius: 1,
                    spreadRadius: 0.01,
                    offset: const Offset(-1, -1),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Today Tasks',
                        style: MyStyle.tx12b.copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        '06/10 ',
                        style: MyStyle.tx20b.copyWith(
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const VerticalDivider(
                    thickness: 0,
                    width: 2,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Total Time',
                        style: MyStyle.tx12b.copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        '1 Month',
                        style: MyStyle.tx20b.copyWith(
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
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
                      height: 38,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(right: 12),
                      color: onClick == 'task' ? MyColor.black : MyColor.grey,
                      child: Center(
                        child: Text(
                          'All Task',
                          style: onClick == 'task'
                              ? MyStyle.tx12w.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                )
                              : MyStyle.tx12b.copyWith(
                                  fontSize: 12,
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
                      height: 38,
                      width: MediaQuery.of(context).size.width,
                      // margin: EdgeInsets.only(right: 6, left: 6),
                      color:
                          onClick == 'complete' ? MyColor.black : MyColor.grey,
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
                      height: 38,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(left: 12),
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
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: MyStyle.tx14b,
                  isDense: true,
                  // contentPadding: EdgeInsets.symmetric(
                  //   horizontal: 20,
                  //   vertical: 20,
                  // ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: MyColor.grey,
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Image.asset(
                      'assets/icons/search.png',
                      // height: 10,
                      // width: 10,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: MyColor.grey,
                    ),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: MyColor.grey,
                    ),
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'January 2023',
              textAlign: TextAlign.start,
              style: MyStyle.tx14b.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontFamily: 'Roboto-Bold',
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            //   ListView Builder
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: statusList.length,
                shrinkWrap: false,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, taskDetailRoute);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(bottom: 18),
                      decoration: BoxDecoration(
                        color: MyColor.white,
                        border: const Border(
                          left: BorderSide(color: MyColor.grey),
                          right: BorderSide(color: MyColor.grey),
                          top: BorderSide(color: MyColor.grey),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: MyColor.black.withOpacity(0.1),
                            blurRadius: 4,
                            spreadRadius: 0.01,
                            offset: const Offset(1, 4),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              color: MyColor.grey,
                              child: Center(
                                child: Image.asset(
                                  'assets/icons/pad.png',
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // const SizedBox(
                                //   height: 12,
                                // ),
                                Text(
                                  'Workshop',
                                  style: MyStyle.tx16b.copyWith(
                                    fontFamily: 'NotoSansKR-Bold',
                                  ),
                                ),
                                Text(
                                  '3:00 PM - 5:00 PM',
                                  style: MyStyle.tx14b.copyWith(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins-Medium',
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Status: ',
                                      style: MyStyle.tx12b.copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      '${statusList[index]["Text"]}',
                                      style: MyStyle.tx12b.copyWith(
                                        fontSize: 10,
                                        fontFamily: 'Poppins-Regular',
                                        fontWeight: FontWeight.w400,
                                        color: statusList[index]["Color"],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
