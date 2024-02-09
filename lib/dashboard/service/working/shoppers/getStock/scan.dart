import 'dart:typed_data';

import 'package:colorsoul/values/myColor.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import '../../../../../values/myStyle.dart';

class Scan extends StatefulWidget {
  const Scan({super.key});

  @override
  State<Scan> createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  final List<Map<String, dynamic>> scanList = [
    {
      "title": 'Glam 01',
      "Number": '20 Qnt',
    },
    {
      "title": 'Rais 02',
      "Number": '05 Qnt',
    },
    {
      "title": 'Glam 03',
      "Number": '20 Qnt',
    },
    {
      "title": 'Glam 04',
      "Number": '10 Qnt',
    },
    {
      "title": 'Glam 05',
      "Number": '20 Qnt',
    },
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
          'SCAN',
          style: MyStyle.tx16b,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            color: MyColor.grey,
            child: Center(
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 40),
                  child: MobileScanner(
                    onDetect: (capture) {
                      final List<Barcode> bardcodes = capture.barcodes;
                      final Uint8List? image = capture.image;
                      for (final barcode in bardcodes) {
                        debugPrint('Barcode Found! ${barcode.rawValue}');
                      }
                      if (image != null) {
                        showDialog(
                          context: context,
                          builder: (context) =>
                              Image(image: MemoryImage(image)),
                        );
                        Future.delayed(const Duration(seconds: 5), () {
                          Navigator.pop(context);
                        });
                      }
                    },
                  )),
            ),
          ),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: scanList.length,
          //     itemBuilder: (context, index) {
          //       return Container(
          //         margin:
          //             const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          //         child: Row(
          //           children: [
          //             Expanded(
          //               child: Text(
          //                 '${scanList[index]["title"]}',
          //                 style: MyStyle.tx14b.copyWith(
          //                   fontFamily: 'Roboto-Medium',
          //                 ),
          //               ),
          //             ),
          //             Text(
          //               '${scanList[index]["Number"]}',
          //               style: MyStyle.tx14b.copyWith(
          //                 fontFamily: 'Roboto-Medium',
          //               ),
          //             ),
          //             const SizedBox(
          //               child: Divider(
          //                 thickness: 1,
          //                 color: MyColor.black,
          //                 height: 40,
          //               ),
          //             )
          //           ],
          //         ),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
      bottomNavigationBar: InkWell(
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
    );
  }
}
