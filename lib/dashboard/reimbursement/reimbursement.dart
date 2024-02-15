import 'package:colorsoul/constants/routes.dart';
import 'package:colorsoul/values/myColor.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../values/myStyle.dart';

class Reimbursement extends StatefulWidget {
  const Reimbursement({super.key});

  @override
  State<Reimbursement> createState() => _ReimbursementState();
}

class _ReimbursementState extends State<Reimbursement> {
  TextEditingController searchController = TextEditingController();
  final List<String> _monthList = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  final List<String> _yearList = [
    '2024',
    '2023',
    '2022',
    '2021',
    '2020',
    '2019',
  ];
  String? yearSelected;
  String? monthSelected;

  final List<Map<String, dynamic>> totalList = [
    {
      "Title": 'Total Spends in January',
      "Amount": '₹ 7,773',
    },
    {
      "Title": 'Total Approved in January',
      "Amount": '₹ 5,773',
    },
    {
      "Title": 'Total Disapprove in January',
      "Amount": '₹ 2,000',
    },
  ];

  final List<Map<String, dynamic>> reimList = [
    {
      "title": 'Approve',
      "Color": MyColor.green,
      "Price": '₹ 500',
    },
    {
      "title": 'Approve',
      "Color": MyColor.yellow,
      "Price": '₹ 200',
    },
    {"title": 'Approve', "Color": MyColor.red, "Price": '₹ 100'},
    {
      "title": 'Approve',
      "Color": MyColor.green,
      "Price": '₹ 1500',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        backgroundColor: MyColor.white,
        title: const Text(
          'Reimbursement',
          style: MyStyle.tx16b,
        ),
      ),
      body: Column(
        children: [
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 15.0),
          //   child: Row(
          //     children: [
          //       Expanded(
          //         child: Container(
          //           height: 68,
          //           width: MediaQuery.of(context).size.width,
          //           padding: const EdgeInsets.only(left: 12, top: 12),
          //           decoration: BoxDecoration(
          //             color: MyColor.white,
          //             border: const Border(
          //               left: BorderSide(color: MyColor.grey),
          //               right: BorderSide(color: MyColor.grey),
          //               top: BorderSide(color: MyColor.grey),
          //             ),
          //             boxShadow: [
          //               BoxShadow(
          //                 color: MyColor.black.withOpacity(0.1),
          //                 blurRadius: 4,
          //                 spreadRadius: 0.01,
          //                 offset: const Offset(1, 4),
          //               ),
          //             ],
          //           ),
          //           child: Column(
          //             // mainAxisAlignment: MainAxisAlignment.center,
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 'Total Spends in January',
          //                 style: MyStyle.tx10b.copyWith(
          //                   fontWeight: FontWeight.w400,
          //                 ),
          //               ),
          //               const SizedBox(
          //                 height: 8,
          //               ),
          //               Text(
          //                 '₹ 7,773',
          //                 style: MyStyle.tx16b.copyWith(
          //                   fontWeight: FontWeight.w700,
          //                   fontFamily: 'Poppins-SemiBold',
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //       const SizedBox(
          //         width: 15,
          //       ),
          //     ],
          //   ),
          // ),
          SizedBox(
            height: 78,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: totalList.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Container(
                  height: 68,
                  width: 180,
                  margin: EdgeInsets.only(left: 10, bottom: 12),
                  padding: const EdgeInsets.only(
                    left: 12,
                    top: 12,
                  ),
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
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${totalList[index]["Title"]}',
                        style: MyStyle.tx10b.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        '${totalList[index]["Amount"]}',
                        style: MyStyle.tx16b.copyWith(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins-SemiBold',
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.40,
                  child: TextFormField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: MyStyle.tx14b,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: MyColor.grey,
                        ),
                        borderRadius: BorderRadius.circular(1),
                      ),
                      suffixIcon: const Icon(
                        Icons.search_outlined,
                        size: 16,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: MyColor.grey,
                        ),
                        borderRadius: BorderRadius.circular(1),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: MyColor.grey,
                        ),
                        borderRadius: BorderRadius.circular(1),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  color: MyColor.grey,
                  width: MediaQuery.of(context).size.width * 0.26,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButtonFormField2<String>(
                      hint: Text(
                        'Months',
                        style: MyStyle.tx12b,
                        overflow: TextOverflow.ellipsis,
                      ),
                      style: MyStyle.tx12b,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.zero,
                      ),
                      value: monthSelected,
                      isExpanded: true,
                      onChanged: (String? value) {
                        print(value);
                        setState(() {
                          monthSelected = null;
                          monthSelected = value!;
                        });
                      },
                      // dropdownColor: MyColor.black.withOpacity(0.25),
                      items: _monthList.map<DropdownMenuItem<String>>((list) {
                        print(list);
                        return DropdownMenuItem<String>(
                          value: list,
                          child: Text(
                            list,
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            style: MyStyle.tx12b.copyWith(
                              color: MyColor.black,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    color: MyColor.grey,
                    width: MediaQuery.of(context).size.width,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButtonFormField2<String>(
                        hint: Text(
                          'Year',
                          style: MyStyle.tx12b,
                          overflow: TextOverflow.ellipsis,
                        ),
                        style: MyStyle.tx12b,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.zero,
                        ),
                        value: yearSelected,
                        isExpanded: true,
                        onChanged: (String? value) {
                          print(value);
                          setState(() {
                            yearSelected = null;
                            yearSelected = value!;
                          });
                        },
                        // dropdownColor: MyColor.black.withOpacity(0.25),
                        items: _yearList.map<DropdownMenuItem<String>>((list) {
                          print(list);
                          return DropdownMenuItem<String>(
                            value: list,
                            child: Text(
                              list,
                              softWrap: false,
                              overflow: TextOverflow.ellipsis,
                              style: MyStyle.tx12b.copyWith(
                                color: MyColor.black,
                              ),
                            ),
                          );
                        }).toList(),
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
            child: SingleChildScrollView(
              child: Container(
                color: MyColor.grey,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '16, January 2023',
                            style: MyStyle.tx14b.copyWith(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins-SemiBold'),
                          ),
                          Image.asset(
                            'assets/icons/funnel.png',
                            height: 22,
                            width: 22,
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: reimList.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, historyRoute);
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 6),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            '${reimList[index]["title"]}',
                                            style: MyStyle.tx10b.copyWith(
                                              color: reimList[index]["Color"],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '${reimList[index]["Price"]}',
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
                        );
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          '16, January 2023',
                          textAlign: TextAlign.start,
                          style: MyStyle.tx14b.copyWith(
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins-SemiBold'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, historyRoute);
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 6),
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
                              '₹ 1500',
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
