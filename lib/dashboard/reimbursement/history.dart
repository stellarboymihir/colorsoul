import 'package:flutter/material.dart';

import '../../values/myColor.dart';
import '../../values/myStyle.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.white,
        leading: Container(
          height: 36,
          width: 36,
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.all(15),
          color: MyColor.grey,
          child: const Center(
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 14,
            ),
          ),
        ),
        title: const Text(
          'History',
          style: MyStyle.tx16b,
        ),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                // Navigator.pushNamed(context, historyRoute);
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 15),
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
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(
                        'assets/images/img10.png',
                        width: 64,
                        height: 56,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Petrol',
                            style: MyStyle.tx14b.copyWith(
                              fontFamily: 'Poppins-Bold',
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            '5 Jan, 2023',
                            style: MyStyle.tx10b.copyWith(
                              fontSize: 9,
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Text(
                                'Status: ',
                                style: MyStyle.tx10b.copyWith(
                                  fontSize: 9,
                                ),
                              ),
                              Text(
                                'Disapproved',
                                style: MyStyle.tx10b.copyWith(
                                  fontSize: 9,
                                  color: MyColor.red,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '₹ 500',
                      style: MyStyle.tx16b.copyWith(
                        fontSize: 18,
                        fontFamily: 'Poppins-Bold',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                'Massage',
                style: MyStyle.tx14b.copyWith(
                  fontFamily: 'Poppins-Bold',
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                'Lorem ipsum dolor sit amet consectetur. '
                'Viverra mauris sit in sit quam orci '
                'porta gravida. ',
                style: MyStyle.tx10b,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                'Description',
                style: MyStyle.tx14b.copyWith(
                  fontFamily: 'Poppins-Bold',
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                'Lorem ipsum dolor sit amet consectetur. '
                'Quis ornare tristique sodales nibh suscipit. '
                'Ante viverra vel lobortis porta vitae ultrices '
                'sed vestibulum massa. Cras molestie tempor bibendum '
                'egestas massa molestie egestas. Ultrices amet justo mi diam nullam. '
                'Orci vivamus at sed adipiscing lectus tellus ut proin. Nisl. ',
                style: MyStyle.tx10b,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              color: MyColor.grey,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(8.0),
              // Inside container
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    padding: const EdgeInsets.all(8),
                    height: MediaQuery.of(context).size.height * 0.1,
                    color: MyColor.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Reason',
                          style: MyStyle.tx14b.copyWith(
                            color: MyColor.red,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Lorem ipsum dolor sit amet '
                          'consectetur. Viverra mauris sit in '
                          'sit quam orci porta gravida. ',
                          style: MyStyle.tx10b,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
