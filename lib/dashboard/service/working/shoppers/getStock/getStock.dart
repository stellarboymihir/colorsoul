import 'package:colorsoul/constants/routes.dart';
import 'package:colorsoul/values/myColor.dart';
import 'package:flutter/material.dart';

import '../../../../../values/myStyle.dart';

class GetStock extends StatefulWidget {
  const GetStock({super.key});

  @override
  State<GetStock> createState() => _GetStockState();
}

class _GetStockState extends State<GetStock> {
  TextEditingController searchController = TextEditingController();
  TextEditingController stockController = TextEditingController();
  // List<bool> onClick = [false, false, false, false];

  final List<Map<String, dynamic>> stockList = [
    {
      "Text": 'Glam',
      "Number": '40',
      "onClick": false,
      "ProductData": [
        {
          "productTitle": 'Glam 01',
          'productController': TextEditingController(),
        },
        {
          "productTitle": 'Glam 01',
          'productController': TextEditingController(),
        },
        {
          "productTitle": 'Glam 01',
          'productController': TextEditingController(),
        },
        {
          "productTitle": 'Glam 01',
          'productController': TextEditingController(),
        },
        {
          "productTitle": 'Glam 01',
          'productController': TextEditingController(),
        }
      ],
    },
    {
      "Text": 'Pout',
      "Number": '80',
      "onClick": false,
      "ProductData": [
        {
          "productTitle": 'Pout 01',
          'productController': TextEditingController(),
        },
        {
          "productTitle": 'Pout 01',
          'productController': TextEditingController(),
        },
        {
          "productTitle": 'Pout 01',
          'productController': TextEditingController(),
        },
        {
          "productTitle": 'Pout 01',
          'productController': TextEditingController(),
        },
        {
          "productTitle": 'Pout 01',
          'productController': TextEditingController(),
        }
      ],
    },
    {
      "Text": 'Rise',
      "Number": '65',
      "onClick": false,
      "ProductData": [
        {
          "productTitle": 'Rise 01',
          'productController': TextEditingController(),
        },
        {
          "productTitle": 'Rise 01',
          'productController': TextEditingController(),
        },
        {
          "productTitle": 'Rise 01',
          'productController': TextEditingController(),
        },
        {
          "productTitle": 'Rise 01',
          'productController': TextEditingController(),
        },
        {
          "productTitle": 'Rise 01',
          'productController': TextEditingController(),
        }
      ],
    },
    {
      "Text": 'Bliss',
      "Number": '65',
      "onClick": false,
      "ProductData": [
        {
          "productTitle": 'Bliss 01',
          'productController': TextEditingController(),
        },
        {
          "productTitle": 'Bliss 01',
          'productController': TextEditingController(),
        },
        {
          "productTitle": 'Bliss 01',
          'productController': TextEditingController(),
        },
        {
          "productTitle": 'Bliss 01',
          'productController': TextEditingController(),
        },
        {
          "productTitle": 'Bliss 01',
          'productController': TextEditingController(),
        }
      ],
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.white,
        scrolledUnderElevation: 0,
        leading: Container(
          height: 36,
          width: 36,
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.fromLTRB(20, 12, 0, 12),
          color: MyColor.grey,
          child: const Center(
              child: Icon(
            Icons.arrow_back_ios_new,
            size: 16,
          )),
        ),
        title: const Text(
          'Get Stock',
          style: MyStyle.tx16b,
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, scanRoute);
            },
            child: Container(
              height: 36,
              width: 36,
              margin: const EdgeInsets.fromLTRB(0, 12, 20, 12),
              color: MyColor.grey,
              child: Center(
                child: Image.asset(
                  'assets/icons/scan.png',
                  height: 18,
                  width: 18,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          //  Search Bar
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            width: MediaQuery.of(context).size.width,
            child: TextFormField(
              controller: searchController,
              decoration: const InputDecoration(
                hintText: 'Search',
                hintStyle: MyStyle.tx14b,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyColor.grey,
                  ),
                ),
                suffixIcon: Icon(
                  Icons.search_outlined,
                  size: 16,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyColor.grey,
                  ),
                ),
                border: OutlineInputBorder(
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

          //  List
          Container(
            // height: 43,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            width: MediaQuery.of(context).size.width,
            color: MyColor.grey,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Item',
                    style: MyStyle.tx10b.copyWith(
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Roboto-Medium',
                      fontSize: 12,
                    ),
                  ),
                ),
                Text(
                  'Current Stock',
                  style: MyStyle.tx10b.copyWith(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto-Medium',
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          //  Expansion Tile
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemCount: stockList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                stockList[index]["onClick"] =
                                    !stockList[index]["onClick"];
                              });
                            },
                            child: Container(
                              width: 36,
                              height: 56,
                              margin: const EdgeInsets.only(
                                  left: 8, top: 8, bottom: 4, right: 4),
                              color: MyColor.grey,
                              child: stockList[index]["onClick"]
                                  ? const Icon(Icons.arrow_drop_up)
                                  : const Icon(Icons.arrow_drop_down),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 56,
                              color: MyColor.grey,
                              margin: const EdgeInsets.only(
                                  left: 4, top: 8, bottom: 4, right: 2),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              // margin: const EdgeInsets.symmetric(horizontal: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${stockList[index]["Text"]}',
                                    style: MyStyle.tx14b.copyWith(
                                        // fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto-Medium',
                                        fontSize: 15),
                                  ),
                                  Text(
                                    'Total Stock: 100',
                                    style: MyStyle.tx10b.copyWith(
                                      fontSize: 11,
                                      fontFamily: 'Roboto-Medium',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 70,
                            height: 58,
                            margin: const EdgeInsets.only(
                                left: 2, top: 8, bottom: 4, right: 8),
                            child: Center(
                              child: TextFormField(
                                style: MyStyle.tx14b,
                                textAlign: TextAlign.center,
                                controller: stockController,
                                decoration: InputDecoration(
                                  hintText: '${stockList[index]["Number"]}',
                                  hintStyle: MyStyle.tx14b,
                                  // contentPadding:
                                  //     const EdgeInsets.symmetric(horizontal: 25),
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: MyColor.grey,
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
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (stockList[index]["onClick"])
                        const SizedBox()
                      else
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: stockList[index]["ProductData"].length,
                          shrinkWrap: true,
                          itemBuilder: (context, indexOne) {
                            return Container(
                              height: 50,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 1),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              width: MediaQuery.of(context).size.width,
                              color: MyColor.grey,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      '${stockList[index]["ProductData"][indexOne]["productTitle"]}',
                                      style: MyStyle.tx14b.copyWith(
                                        fontFamily: 'Roboto-Medium',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      textAlign: TextAlign.end,
                                      controller: stockList[index]
                                              ["ProductData"][indexOne]
                                          ["productController"],
                                      style: MyStyle.tx14b,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: '05',
                                        hintStyle: MyStyle.tx14b.copyWith(
                                            // fontFamily: 'Roboto-Medium',
                                            // fontWeight: FontWeight.w400,
                                            ),
                                      ),
                                      keyboardType: TextInputType.number,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                    ],
                  );
                },
              ),
            ),
          ),
          // Column(
          //   children: [
          //     Row(
          //       children: [
          //         InkWell(
          //           onTap: () {
          //             setState(() {
          //               onClick[1] = !onClick[1];
          //             });
          //           },
          //           child: Container(
          //             width: 32,
          //             height: 56,
          //             margin: const EdgeInsets.only(
          //                 left: 12, top: 10, bottom: 10, right: 4),
          //             color: MyColor.grey,
          //             child: onClick[1]
          //                 ? const Icon(Icons.arrow_drop_up)
          //                 : const Icon(Icons.arrow_drop_down),
          //           ),
          //         ),
          //         Expanded(
          //           child: Container(
          //             height: 56,
          //             // Use double.infinity to make the container take the maximum possible width
          //             width: MediaQuery.of(context).size.width,
          //             color: MyColor.grey,
          //             padding: const EdgeInsets.symmetric(horizontal: 12),
          //             // margin: const EdgeInsets.symmetric(horizontal: 12),
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 Text(
          //                   'Glam',
          //                   style: MyStyle.tx14b.copyWith(
          //                       // fontWeight: FontWeight.w400,
          //                       fontFamily: 'Roboto-Medium',
          //                       fontSize: 16),
          //                 ),
          //                 Text(
          //                   'Total Stock: 100',
          //                   style: MyStyle.tx10b.copyWith(
          //                     fontSize: 12,
          //                     fontFamily: 'Roboto-Regular',
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //         Container(
          //             width: 90,
          //             height: 56,
          //             margin: const EdgeInsets.symmetric(horizontal: 12),
          //             decoration: BoxDecoration(
          //               border: Border.all(
          //                 color: MyColor.grey,
          //               ),
          //             ),
          //             child: const Center(
          //               child: Text('40'),
          //             )),
          //       ],
          //     ),
          //     onClick[1]
          //         ? const SizedBox()
          //         : ListView.builder(
          //             scrollDirection: Axis.vertical,
          //             itemCount: 5,
          //             shrinkWrap: true,
          //             itemBuilder: (context, index) {
          //               return Container(
          //                 height: 50,
          //                 margin: const EdgeInsets.symmetric(
          //                     horizontal: 12, vertical: 1),
          //                 padding: const EdgeInsets.symmetric(horizontal: 20),
          //                 width: MediaQuery.of(context).size.width,
          //                 color: MyColor.grey,
          //                 child: Row(
          //                   children: [
          //                     Text(
          //                       'Glam 01',
          //                       style: MyStyle.tx14b.copyWith(
          //                         fontFamily: 'Roboto-Medium',
          //                       ),
          //                     ),
          //                     const Spacer(),
          //                     Text(
          //                       '05',
          //                       style: MyStyle.tx14b.copyWith(
          //                         fontFamily: 'Roboto-Regular',
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               );
          //             },
          //           ),
          //   ],
          // ),
          // Column(
          //   children: [
          //     Row(
          //       children: [
          //         InkWell(
          //           onTap: () {
          //             setState(() {
          //               onClick[2] = !onClick[2];
          //             });
          //           },
          //           child: Container(
          //             width: 32,
          //             height: 56,
          //             margin: const EdgeInsets.only(
          //                 left: 12, top: 10, bottom: 10, right: 4),
          //             color: MyColor.grey,
          //             child: onClick[2]
          //                 ? const Icon(Icons.arrow_drop_up)
          //                 : const Icon(Icons.arrow_drop_down),
          //           ),
          //         ),
          //         Expanded(
          //           child: Container(
          //             height: 56,
          //             // Use double.infinity to make the container take the maximum possible width
          //             width: MediaQuery.of(context).size.width,
          //             color: MyColor.grey,
          //             padding: const EdgeInsets.symmetric(horizontal: 12),
          //             // margin: const EdgeInsets.symmetric(horizontal: 12),
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 Text(
          //                   'Glam',
          //                   style: MyStyle.tx14b.copyWith(
          //                       // fontWeight: FontWeight.w400,
          //                       fontFamily: 'Roboto-Medium',
          //                       fontSize: 16),
          //                 ),
          //                 Text(
          //                   'Total Stock: 100',
          //                   style: MyStyle.tx10b.copyWith(
          //                     fontSize: 12,
          //                     fontFamily: 'Roboto-Regular',
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //         Container(
          //             width: 90,
          //             height: 56,
          //             margin: const EdgeInsets.symmetric(horizontal: 12),
          //             decoration: BoxDecoration(
          //               border: Border.all(
          //                 color: MyColor.grey,
          //               ),
          //             ),
          //             child: const Center(
          //               child: Text('40'),
          //             )),
          //       ],
          //     ),
          //     onClick[2]
          //         ? const SizedBox()
          //         : ListView.builder(
          //             scrollDirection: Axis.vertical,
          //             itemCount: 5,
          //             shrinkWrap: true,
          //             itemBuilder: (context, index) {
          //               return Container(
          //                 height: 50,
          //                 margin: const EdgeInsets.symmetric(
          //                     horizontal: 12, vertical: 1),
          //                 padding: const EdgeInsets.symmetric(horizontal: 20),
          //                 width: MediaQuery.of(context).size.width,
          //                 color: MyColor.grey,
          //                 child: Row(
          //                   children: [
          //                     Text(
          //                       'Glam 01',
          //                       style: MyStyle.tx14b.copyWith(
          //                         fontFamily: 'Roboto-Medium',
          //                       ),
          //                     ),
          //                     const Spacer(),
          //                     Text(
          //                       '05',
          //                       style: MyStyle.tx14b.copyWith(
          //                         fontFamily: 'Roboto-Regular',
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               );
          //             },
          //           ),
          //   ],
          // ),
          // Column(
          //   children: [
          //     Row(
          //       children: [
          //         InkWell(
          //           onTap: () {
          //             setState(() {
          //               onClick[3] = !onClick[3];
          //             });
          //           },
          //           child: Container(
          //             width: 32,
          //             height: 56,
          //             margin: const EdgeInsets.only(
          //                 left: 12, top: 10, bottom: 10, right: 4),
          //             color: MyColor.grey,
          //             child: onClick[3]
          //                 ? const Icon(Icons.arrow_drop_up)
          //                 : const Icon(Icons.arrow_drop_down),
          //           ),
          //         ),
          //         Expanded(
          //           child: Container(
          //             height: 56,
          //             // Use double.infinity to make the container take the maximum possible width
          //             width: MediaQuery.of(context).size.width,
          //             color: MyColor.grey,
          //             padding: const EdgeInsets.symmetric(horizontal: 12),
          //             // margin: const EdgeInsets.symmetric(horizontal: 12),
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 Text(
          //                   'Glam',
          //                   style: MyStyle.tx14b.copyWith(
          //                       // fontWeight: FontWeight.w400,
          //                       fontFamily: 'Roboto-Medium',
          //                       fontSize: 16),
          //                 ),
          //                 Text(
          //                   'Total Stock: 100',
          //                   style: MyStyle.tx10b.copyWith(
          //                     fontSize: 12,
          //                     fontFamily: 'Roboto-Regular',
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //         Container(
          //             width: 90,
          //             height: 56,
          //             margin: const EdgeInsets.symmetric(horizontal: 12),
          //             decoration: BoxDecoration(
          //               border: Border.all(
          //                 color: MyColor.grey,
          //               ),
          //             ),
          //             child: const Center(
          //               child: Text('40'),
          //             )),
          //       ],
          //     ),
          //     onClick[3]
          //         ? const SizedBox()
          //         : ListView.builder(
          //             scrollDirection: Axis.vertical,
          //             itemCount: 5,
          //             shrinkWrap: true,
          //             itemBuilder: (context, index) {
          //               return Container(
          //                 height: 50,
          //                 margin: const EdgeInsets.symmetric(
          //                     horizontal: 12, vertical: 1),
          //                 padding: const EdgeInsets.symmetric(horizontal: 20),
          //                 width: MediaQuery.of(context).size.width,
          //                 color: MyColor.grey,
          //                 child: Row(
          //                   children: [
          //                     Text(
          //                       'Glam 01',
          //                       style: MyStyle.tx14b.copyWith(
          //                         fontFamily: 'Roboto-Medium',
          //                       ),
          //                     ),
          //                     const Spacer(),
          //                     Text(
          //                       '05',
          //                       style: MyStyle.tx14b.copyWith(
          //                         fontFamily: 'Roboto-Regular',
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               );
          //             },
          //           ),
          //   ],
          // ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: MyColor.grey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Total Stock',
                        style: MyStyle.tx14b.copyWith(
                          fontSize: 12,
                          fontFamily: 'Roboto-Medium',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '170',
                        style: MyStyle.tx20b.copyWith(
                          fontSize: 18,
                          fontFamily: 'Roboto-Bold',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    color: MyColor.black,
                    child: Center(
                      child: Text(
                        'Submit',
                        style: MyStyle.tx20W.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}