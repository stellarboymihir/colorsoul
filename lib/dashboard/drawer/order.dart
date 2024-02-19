import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../values/myColor.dart';
import '../../values/myStyle.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  TextEditingController searchController = TextEditingController();
  final List<String> _shortList = [
    'Today',
    'Yesterday',
    'Week',
    'Months',
    'Custom',
  ];
  String? shortList;
  final List<String> _allOrder = [
    'Confirmed',
    'Pending',
    'Delivered ',
    'Cancel',
  ];
  String? allOrder;
  final List<Map<String, dynamic>> orderList = [
    {
      "title": 'Confirmed',
      "Color": MyColor.green,
    },
    {
      "title": 'Pending',
      "Color": MyColor.red,
    },
    {
      "title": 'Confirmed',
      "Color": MyColor.green,
    },
  ];
  final List<Map<String, dynamic>> janList = [
    {
      "title": 'Confirmed',
      "Color": MyColor.green,
    },
    {
      "title": 'Delivered',
      "Color": MyColor.lightBlue,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColor.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
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
        ),
        title: const Text(
          'Orders',
          style: MyStyle.tx16b,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //  Search Bar
              SizedBox(
                width: MediaQuery.of(context).size.width,
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
                height: 12,
              ),

              // Dropdown
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: MyColor.grey,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButtonFormField2<String>(
                          hint: Text(
                            'All Order',
                            style: MyStyle.tx16b.copyWith(
                              fontSize: 14,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          style: MyStyle.tx12b,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.only(right: 5),
                          ),
                          value: allOrder,
                          isExpanded: true,
                          onChanged: (String? value) {
                            print(value);
                            setState(() {
                              allOrder = null;
                              allOrder = value!;
                            });
                          },
                          iconStyleData: IconStyleData(
                            iconDisabledColor: MyColor.black,
                            iconEnabledColor: MyColor.black,
                          ),
                          // dropdownColor: MyColor.black.withOpacity(0.25),
                          items:
                              _allOrder.map<DropdownMenuItem<String>>((list) {
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
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      color: MyColor.grey,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButtonFormField2<String>(
                          hint: Text(
                            'Short by',
                            style: MyStyle.tx16b.copyWith(
                              fontSize: 14,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          style: MyStyle.tx12b,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.only(right: 5),
                          ),
                          value: shortList,
                          isExpanded: true,
                          onChanged: (String? value) {
                            print(value);
                            setState(() {
                              shortList = null;
                              shortList = value!;
                            });
                          },
                          iconStyleData: const IconStyleData(
                            iconDisabledColor: MyColor.black,
                            iconEnabledColor: MyColor.black,
                          ),
                          // dropdownColor: MyColor.black.withOpacity(0.25),
                          items:
                              _shortList.map<DropdownMenuItem<String>>((list) {
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
              const SizedBox(
                height: 12,
              ),

              //    Today
              Text(
                'Todays',
                style: MyStyle.tx14b.copyWith(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins-Bold',
                ),
              ),
              // const SizedBox(
              //   height: 12,
              // ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: orderList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, historyRoute);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 8),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'GK Shoppers ',
                            style: MyStyle.tx14b.copyWith(
                              fontFamily: 'Poppins-Bold',
                              // fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '18, Dec 2021',
                                style: MyStyle.tx12b.copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Roboto-Bold',
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                '9:30 AM ',
                                style: MyStyle.tx12b.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto-Regular',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Text(
                                'Order No : XZD1234',
                                style: MyStyle.tx10b.copyWith(
                                  fontFamily: 'Roboto-Regular',
                                ),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Text(
                                'Status: ',
                                style: MyStyle.tx10b.copyWith(
                                    // fontSize: 9,
                                    ),
                              ),
                              Text(
                                '${orderList[index]["title"]}',
                                style: MyStyle.tx10b.copyWith(
                                  color: orderList[index]["Color"],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                '15 Jan 2023',
                style: MyStyle.tx14b.copyWith(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins-Bold',
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: janList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, historyRoute);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 8),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'GK Shoppers ',
                            style: MyStyle.tx14b.copyWith(
                              fontFamily: 'Poppins-Bold',
                              // fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '18, Dec 2021',
                                style: MyStyle.tx12b.copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Roboto-Bold',
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                '9:30 AM ',
                                style: MyStyle.tx12b.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto-Regular',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Text(
                                'Order No : XZD1234',
                                style: MyStyle.tx10b.copyWith(
                                  fontFamily: 'Roboto-Regular',
                                ),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Text(
                                'Status: ',
                                style: MyStyle.tx10b.copyWith(
                                    // fontSize: 9,
                                    ),
                              ),
                              Text(
                                '${janList[index]["title"]}',
                                style: MyStyle.tx10b.copyWith(
                                  color: janList[index]["Color"],
                                ),
                              ),
                            ],
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
    );
  }
}
