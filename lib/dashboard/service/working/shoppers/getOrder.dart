import 'package:colorsoul/values/myColor.dart';
import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/material.dart';

class GetOrder extends StatefulWidget {
  const GetOrder({super.key});

  @override
  State<GetOrder> createState() => _GetOrderState();
}

class _GetOrderState extends State<GetOrder> {
  TextEditingController currController = TextEditingController();
  TextEditingController addController = TextEditingController();

  TextEditingController glamController = TextEditingController();
  TextEditingController poutController = TextEditingController();
  TextEditingController riseController = TextEditingController();
  TextEditingController blissController = TextEditingController();
  final List<Map<String, dynamic>> orderList = [
    {
      "Text": 'Glam',
      "CurrStockQ": '60',
      "AddStockQ": '40',
      "Amount": '₹ 230000',
      "currentDataController": TextEditingController(),
      "addDataController": TextEditingController(),
      "onClick": true,
      "ProductData": [
        {
          "productTitle": 'Glam 01',
          'productController': TextEditingController(),
          'productAmount': '₹ 230000',
        },
        {
          "productTitle": 'Glam 01',
          'productController': TextEditingController(),
          'productAmount': '₹ 230000',
        },
        {
          "productTitle": 'Glam 01',
          'productController': TextEditingController(),
          'productAmount': '₹ 230000',
        },
        {
          "productTitle": 'Glam 01',
          'productController': TextEditingController(),
          'productAmount': '₹ 230000',
        },
        {
          "productTitle": 'Glam 01',
          'productController': TextEditingController(),
          'productAmount': '₹ 230000',
        }
      ],
    },
    {
      "Text": 'Pout',
      "CurrStockQ": '60',
      "AddStockQ": '40',
      "Amount": '₹ 230000',
      "currentDataController": TextEditingController(),
      "addDataController": TextEditingController(),
      "onClick": true,
      "ProductData": [
        {
          "productTitle": 'Pout 01',
          'productController': TextEditingController(),
          'productAmount': '₹ 230000',
        },
        {
          "productTitle": 'Pout 01',
          'productController': TextEditingController(),
          'productAmount': '₹ 230000',
        },
        {
          "productTitle": 'Pout 01',
          'productController': TextEditingController(),
          'productAmount': '₹ 230000',
        },
        {
          "productTitle": 'Pout 01',
          'productController': TextEditingController(),
          'productAmount': '₹ 230000',
        },
        {
          "productTitle": 'Pout 01',
          'productController': TextEditingController(),
          'productAmount': '₹ 230000',
        }
      ],
    },
    {
      "Text": 'Rise',
      "CurrStockQ": '50',
      "AddStockQ": '50',
      "Amount": '₹ 230000',
      "currentDataController": TextEditingController(),
      "addDataController": TextEditingController(),
      "onClick": true,
      "ProductData": [
        {
          "productTitle": 'Rise 01',
          'productController': TextEditingController(),
          'productAmount': '₹ 230000',
        },
        {
          "productTitle": 'Rise 01',
          'productController': TextEditingController(),
          'productAmount': '₹ 230000',
        },
        {
          "productTitle": 'Rise 01',
          'productController': TextEditingController(),
          'productAmount': '₹ 230000',
        },
        {
          "productTitle": 'Rise 01',
          'productController': TextEditingController(),
          'productAmount': '₹ 230000',
        },
        {
          "productTitle": 'Rise 01',
          'productController': TextEditingController(),
          'productAmount': '₹ 230000',
        }
      ],
    },
    {
      "Text": 'Bliss',
      "CurrStockQ": '40',
      "AddStockQ": '60',
      "Amount": '₹ 230000',
      "currentDataController": TextEditingController(),
      "addDataController": TextEditingController(),
      "onClick": true,
      "ProductData": [
        {
          "productTitle": 'Bliss 01',
          'productController': TextEditingController(),
          'productAmount': '₹ 230000',
        },
        {
          "productTitle": 'Bliss 01',
          'productController': TextEditingController(),
          'productAmount': '₹ 230000',
        },
        {
          "productTitle": 'Bliss 01',
          'productController': TextEditingController(),
          'productAmount': '₹ 230000',
        },
        {
          "productTitle": 'Bliss 01',
          'productController': TextEditingController(),
          'productAmount': '₹ 230000',
        },
        {
          "productTitle": 'Bliss 01',
          'productController': TextEditingController(),
          'productAmount': '₹ 230000',
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
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
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
        ),
        title: const Text(
          'Get Order',
          style: MyStyle.tx16b,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/shop.png',
                  height: 76,
                  width: 76,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'GK Shoppers ',
                      style: MyStyle.tx18b.copyWith(
                        fontFamily: 'Roboto-Bold',
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/map.png',
                          width: 12,
                          height: 15,
                          fit: BoxFit.fill,
                        ),
                        Text(
                          ' Location: Central mall, Surat',
                          style: MyStyle.tx12b.copyWith(
                            fontFamily: 'Poppins-Regular',
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            // height: 43,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            width: MediaQuery.of(context).size.width,
            color: MyColor.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Item',
                    style: MyStyle.tx10b.copyWith(
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Roboto-Medium',
                      fontSize: 11,
                    ),
                  ),
                ),
                Text(
                  'Curr Stock',
                  style: MyStyle.tx10b.copyWith(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto-Medium',
                    fontSize: 11,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'Add Stock',
                  style: MyStyle.tx10b.copyWith(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto-Medium',
                    fontSize: 11,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  'Amount',
                  textAlign: TextAlign.end,
                  style: MyStyle.tx10b.copyWith(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto-Medium',
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemCount: orderList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          //  Expand/ Dropdown
                          InkWell(
                            onTap: () {
                              setState(() {
                                orderList[index]["onClick"] =
                                    !orderList[index]["onClick"];
                              });
                            },
                            child: Container(
                              width: 32,
                              height: 54,
                              margin: const EdgeInsets.only(
                                  left: 8, top: 8, bottom: 4, right: 4),
                              color: MyColor.grey,
                              child: orderList[index]["onClick"]
                                  ? const Icon(Icons.arrow_drop_up)
                                  : const Icon(Icons.arrow_drop_down),
                            ),
                          ),

                          //    Current Stock
                          Expanded(
                            child: Container(
                              height: 54,
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
                                    '${orderList[index]["Text"]}',
                                    style: MyStyle.tx14b.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto-Medium',
                                        fontSize: 14),
                                  ),
                                  Text(
                                    'Total Stock: 100',
                                    style: MyStyle.tx10b.copyWith(
                                      fontFamily: 'Roboto-Medium',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //   Current  Data
                          Container(
                            width: 55,
                            height: 54,
                            color: MyColor.grey,
                            margin: const EdgeInsets.only(
                                left: 2, top: 8, bottom: 4, right: 8),
                            child: Center(
                              child: Text(
                                '${orderList[index]["CurrStockQ"]}',
                                style: MyStyle.tx14b.copyWith(
                                  fontSize: 13,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),

                          //     Add Data
                          Container(
                            width: 55,
                            height: 54,
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: MyColor.grey,
                            )),
                            margin: const EdgeInsets.only(
                                left: 2, top: 8, bottom: 4, right: 8),
                            child: Center(
                              child: Text(
                                '${orderList[index]["AddStockQ"]}',
                                style: MyStyle.tx14b.copyWith(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),

                          //   Amount
                          Container(
                            width: 70,
                            height: 54,
                            decoration: BoxDecoration(
                              border: Border.all(color: MyColor.grey),
                            ),
                            margin: const EdgeInsets.only(
                                left: 2, top: 8, bottom: 4, right: 8),
                            child: Center(
                              child: Text(
                                '${orderList[index]["Amount"]}',
                                style: MyStyle.tx14b.copyWith(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (orderList[index]["onClick"])
                        const SizedBox()
                      else
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: orderList[index]["ProductData"].length,
                          shrinkWrap: true,
                          itemBuilder: (context, indexOne) {
                            return Container(
                              padding: const EdgeInsets.only(
                                  left: 8, top: 0, bottom: 2, right: 0),
                              width: MediaQuery.of(context).size.width,
                              color: MyColor.grey,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      '${orderList[index]["ProductData"][indexOne]["productTitle"]}',
                                      style: MyStyle.tx14b.copyWith(
                                        fontFamily: 'Roboto-Medium',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 55,
                                    height: 54,
                                    child: const Center(
                                      child: Text(
                                        '05',
                                        style: MyStyle.tx14b,
                                      ),
                                    ),
                                  ),
                                  //   Add Stock Expand
                                  Container(
                                    height: 55,
                                    width: 56,
                                    padding: const EdgeInsets.only(
                                        left: 0.0, right: 0.0),
                                    decoration: const BoxDecoration(
                                      color: MyColor.white,
                                      // border: Border.all(
                                      //   color: MyColor.grey,
                                      // ),
                                    ),
                                    child: TextFormField(
                                      textAlign: TextAlign.center,
                                      controller: orderList[index]
                                              ["ProductData"][indexOne]
                                          ["productController"],
                                      style: MyStyle.tx14b,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hintText: '05',
                                        hintStyle: MyStyle.tx14b,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: MyColor.grey,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(1),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: MyColor.grey,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(1),
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: MyColor.grey,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  //  Amount Expand
                                  SizedBox(
                                    width: 70,
                                    height: 54,
                                    child: Center(
                                      child: Text(
                                        '${orderList[index]["ProductData"][indexOne]["productAmount"]}',
                                        textAlign: TextAlign.end,
                                        style: MyStyle.tx14b.copyWith(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Amount',
                        style: MyStyle.tx16b.copyWith(
                          fontFamily: 'Poppins-Regular',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '₹1300',
                        style: MyStyle.tx16b.copyWith(
                          fontFamily: 'Roboto-Bold',
                          fontWeight: FontWeight.w600,
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
