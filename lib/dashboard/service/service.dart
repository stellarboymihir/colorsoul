import 'package:colorsoul/constants/routes.dart';
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
  var onPressed = 'working';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: MyColor.white,
        title: const Text(
          'Visit Route',
          style: MyStyle.tx16b,
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, editRoute);
            },
            child: Container(
              height: 36,
              width: 36,
              color: MyColor.grey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/icons/pencil.png',
                  height: 25,
                  width: 25,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
                left: 15.0, top: 10, right: 15, bottom: 10),
            decoration: BoxDecoration(
              color: MyColor.white,
              boxShadow: [
                BoxShadow(
                  color: MyColor.black.withOpacity(0.1),
                  blurRadius: 5,
                  spreadRadius: 0.01,
                  offset: const Offset(1, 8),
                ),
              ],
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/images/semi.png',
                    ),
                    Positioned(
                      height: 26,
                      // width: 92,
                      top: 40,
                      left: 16,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: MyColor.white,
                          boxShadow: [
                            BoxShadow(
                              color: MyColor.black.withOpacity(0.1),
                              blurRadius: 5,
                              spreadRadius: 0.01,
                              offset: const Offset(1, 4),
                            ),
                            BoxShadow(
                              color: MyColor.black.withOpacity(0.03),
                              blurRadius: 4,
                              spreadRadius: 0.01,
                              offset: const Offset(1, 0),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Working 34%',
                            style: MyStyle.tx13b.copyWith(
                              fontSize: 12,
                              color: MyColor.darkBlack,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      onPressed = 'working';
                    });
                    const Working();
                  },
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.only(left: 15, right: 6),
                    width: MediaQuery.of(context).size.width,
                    color:
                        onPressed == 'working' ? MyColor.black : MyColor.grey,
                    child: Center(
                      child: Text(
                        'Working',
                        style: onPressed == 'working'
                            ? MyStyle.tx16w.copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              )
                            : MyStyle.tx16b.copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      onPressed = 'completed';
                    });
                    const Completed();
                  },
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.only(right: 15, left: 6),
                    width: MediaQuery.of(context).size.width,
                    color:
                        onPressed == 'completed' ? MyColor.black : MyColor.grey,
                    child: Center(
                      child: Text(
                        'Completed',
                        style: onPressed == 'completed'
                            ? MyStyle.tx16w.copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              )
                            : MyStyle.tx16b.copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          onPressed == 'working'
              ? const Expanded(child: Working())
              : const SizedBox(),
          onPressed == 'completed'
              ? const Expanded(child: Completed())
              : const SizedBox(),
        ],
      ),
    );
  }
}
