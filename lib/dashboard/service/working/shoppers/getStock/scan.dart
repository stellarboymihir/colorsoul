import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:colorsoul/values/myColor.dart';
import '../../../../../values/myStyle.dart';

class Scan extends StatefulWidget {
  const Scan({Key? key}) : super(key: key);

  @override
  State<Scan> createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  final List<Map<String, dynamic>> scanList = [];

  String scanBarcode = "";
  MobileScannerController isBarcodeScanning = MobileScannerController(
    detectionSpeed: DetectionSpeed.normal,
    detectionTimeoutMs: 2000,
    // torchEnabled: true,
  );

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
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40),
                child: MobileScanner(
                  startDelay: true,
                  controller: isBarcodeScanning,
                  onDetect: (capture) {
                    final List<Barcode> barcodes = capture.barcodes;
                    final Uint8List? image = capture.image;

                    for (final barcode in barcodes) {
                      debugPrint('Barcode Found! ${barcode.rawValue}');

                      setState(() {
                        isBarcodeScanning.stop();
                        scanBarcode = barcode.rawValue!;
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return scanDialog();
                            });
                        // scanList.add({
                        //   "title": barcode.rawValue,
                        // });
                      });
                    }
                    if (image != null) {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return scanDialog();
                          });
                    }
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              // height: height,
              // width: width,
              padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8),
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              decoration:
                  BoxDecoration(border: Border.all(color: MyColor.grey)),
              child: ListView.builder(
                itemCount: scanList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Glam $index",
                                style: MyStyle.tx14b.copyWith(
                                  fontFamily: 'Roboto-Medium',
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '${scanList[index]["title"]}',
                                textAlign: TextAlign.end,
                                style: MyStyle.tx14b.copyWith(
                                  fontFamily: 'Roboto-Medium',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                          child: Divider(
                            color: MyColor.black.withOpacity(0.1),
                            endIndent: 0,
                            indent: 0,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          // Navigator.pop(context);
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

  AlertDialog scanDialog() {
    return AlertDialog(
      buttonPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      title: Text(
        "Are you sure you want to add "
        "the barcode '$scanBarcode'? ",
        textAlign: TextAlign.center,
        style: MyStyle.tx14b.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      content: Divider(
        height: 0,
        endIndent: 0,
        indent: 0,
        thickness: 1,
        color: MyColor.black.withOpacity(0.1),
      ),
      contentPadding: const EdgeInsets.only(top: 20),
      actionsPadding: EdgeInsets.zero,
      actions: [
        IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    setState(() {
                      scanList.add({
                        "title": scanBarcode,
                      });

                      isBarcodeScanning.start();
                    });
                  },
                  child: Center(
                    child: Text(
                      "Yes",
                      style: MyStyle.tx14b.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              VerticalDivider(
                thickness: 1,
                indent: 0,
                endIndent: 0,
                width: 0,
                color: MyColor.black.withOpacity(0.1),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    isBarcodeScanning.start();
                    Navigator.pop(context);
                  },
                  child: Center(
                    child: Text(
                      "No",
                      style: MyStyle.tx14b.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    scanBarcode = "";
  }

  @override
  void dispose() {
    super.dispose();
  }
}
