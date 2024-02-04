import 'package:colorsoul/dashboard/service/working/working.dart';
import 'package:flutter/material.dart';

import '../../values/myColor.dart';
import '../../values/myStyle.dart';
import 'completed/completed.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  var onPressed = 'distributor';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: MyColor.white,
        title: Text(
          'Visit Route',
          style: MyStyle.tx14b.copyWith(
            fontWeight: FontWeight.w700,
            fontFamily: 'Poppins-SemiBold',
          ),
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            color: MyColor.grey,
            padding: EdgeInsets.all(10),
            child: Image.asset(
              'assets/icons/pencil.png',
              height: 25,
              width: 25,
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: MyColor.grey.withOpacity(
                          0.7), // Change this to adjust the shadow color
                      blurRadius: 5, // Change this to adjust the blur
                      spreadRadius: 0.01, // Change this to adjust the spread
                      offset:
                          Offset(0.0, 10), // Change this to adjust the offset
                    ),
                  ],
                ),
                child: Card(
                  color: MyColor.white,
                  elevation: 0.1,
                  shadowColor: MyColor.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1),
                    side: const BorderSide(
                      color: MyColor.grey,
                    ),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/semi.png',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        onPressed = 'Working';
                      });
                      const Working();
                    },
                    child: Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                      // margin: EdgeInsets.all(12),
                      color:
                          onPressed == 'Working' ? MyColor.black : MyColor.grey,
                      child: Center(
                        child: Text(
                          'Working',
                          style: onPressed == 'Working'
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
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        onPressed = 'Completed';
                      });
                      const Completed();
                    },
                    child: Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                      // margin: EdgeInsets.all(12),
                      color: onPressed == 'Completed'
                          ? MyColor.black
                          : MyColor.grey,
                      child: Center(
                        child: Text(
                          'Completed',
                          style: onPressed == 'Completed'
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
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            onPressed == 'distributor'
                ? const Expanded(child: Working())
                : const SizedBox(),
            onPressed == 'retailer'
                ? const Expanded(child: Completed())
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
