import 'dart:io';

import 'package:colorsoul/dashboard/home/floating/newRetailer/newFloatingRetailer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../values/myColor.dart';
import '../../../../values/myStyle.dart';
import 'newFloatingDistributor.dart';

class NewRetailer extends StatefulWidget {
  const NewRetailer({super.key});

  @override
  State<NewRetailer> createState() => _NewRetailerState();
}

class _NewRetailerState extends State<NewRetailer> {
  var onPressed = 'distributor';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: MyColor.white,
        leading: Container(
          height: 40,
          width: 40,
          margin: const EdgeInsets.fromLTRB(15, 10, 0, 10),
          color: MyColor.grey,
          child: const Center(
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 16,
            ),
          ),
        ),
        leadingWidth: 50,
        title: const Text(
          'Add new distributor/Retailer',
          style: MyStyle.tx16b,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select type',
              style: MyStyle.tx14b.copyWith(
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins-Medium',
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        onPressed = 'distributor';
                      });
                      const FloatingDistributor();
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      // margin: EdgeInsets.all(12),
                      color: onPressed == 'distributor'
                          ? MyColor.black
                          : MyColor.grey,
                      child: Center(
                        child: Text(
                          'Distributor',
                          style: onPressed == 'distributor'
                              ? MyStyle.tx14w.copyWith(
                                  fontSize: 12,
                                  fontFamily: 'Poppins-SemiBold',
                                  fontWeight: FontWeight.w700,
                                )
                              : MyStyle.tx14b.copyWith(
                                  fontSize: 12,
                                  fontFamily: 'Poppins-SemiBold',
                                  fontWeight: FontWeight.w700,
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        onPressed = 'retailer';
                      });
                      const FloatingRetailer();
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      // margin: EdgeInsets.all(12),
                      color: onPressed == 'retailer'
                          ? MyColor.black
                          : MyColor.grey,
                      child: Center(
                        child: Text(
                          'Retailer',
                          style: onPressed == 'retailer'
                              ? MyStyle.tx14w.copyWith(
                                  fontSize: 14,
                                  fontFamily: 'Poppins-SemiBold',
                                  fontWeight: FontWeight.w700,
                                )
                              : MyStyle.tx14b.copyWith(
                                  fontSize: 14,
                                  fontFamily: 'Poppins-SemiBold',
                                  fontWeight: FontWeight.w700,
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            onPressed == 'distributor'
                ? const Expanded(child: FloatingDistributor())
                : const SizedBox(),
            onPressed == 'retailer'
                ? const Expanded(child: FloatingRetailer())
                : const SizedBox(),
            //    Camera SizedBox
          ],
        ),
      ),
    );
  }
}
