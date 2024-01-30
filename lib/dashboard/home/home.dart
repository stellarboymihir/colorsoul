import 'package:colorsoul/values/myColor.dart';
import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              // Top Bar
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 10),
                    child: Image.asset(
                      'assets/images/samar.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi Samar',
                        textAlign: TextAlign.start,
                        style: MyStyle.tx20b,
                      ),
                      Text(
                        'Dec 18, 2021',
                        textAlign: TextAlign.start,
                        style: MyStyle.tx12b,
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    color: MyColor.grey,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Center(
                      child: Text(
                        'START',
                        style: MyStyle.tx14b.copyWith(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins-ExtraBold',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    color: MyColor.grey,
                    margin: EdgeInsets.all(8.0),
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/icons/bell.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                ],
              ),

              //   Graph
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: MyColor.grey),
                ),
                height: 440,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'January Target',
                          style: MyStyle.tx14b.copyWith(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins-Medium',
                          ),
                        ),
                        Text(
                          'View all',
                          style: MyStyle.tx14b.copyWith(
                              fontWeight: FontWeight.w400, color: MyColor.blue),
                        )
                      ],
                    ),
                    SfRadialGauge(
                      axes: <RadialAxis>[
                        RadialAxis(
                          showAxisLine: false,
                          showLabels: false,
                          showTicks: false,
                          startAngle: 180,
                          endAngle: 360,
                          maximum: 120,
                          // canScaleToFit: true,
                          radiusFactor: 0.79,
                          pointers: const <GaugePointer>[
                            NeedlePointer(
                                needleEndWidth: 5,
                                needleStartWidth: 1,
                                needleLength: 0.7,
                                value: 45,
                                knobStyle: KnobStyle(knobRadius: 0)),
                          ],
                          ranges: <GaugeRange>[
                            GaugeRange(
                                startValue: 0,
                                endValue: 30,
                                startWidth: 0.45,
                                endWidth: 0.45,
                                sizeUnit: GaugeSizeUnit.factor,
                                color: MyColor.red),
                            GaugeRange(
                                startValue: 30,
                                endValue: 60,
                                startWidth: 0.45,
                                sizeUnit: GaugeSizeUnit.factor,
                                endWidth: 0.45,
                                color: MyColor.yellow),
                            GaugeRange(
                                startValue: 60,
                                endValue: 90,
                                startWidth: 0.45,
                                sizeUnit: GaugeSizeUnit.factor,
                                endWidth: 0.45,
                                color: MyColor.green),
                            GaugeRange(
                                startValue: 90,
                                endValue: 120,
                                startWidth: 0.45,
                                sizeUnit: GaugeSizeUnit.factor,
                                endWidth: 0.45,
                                color: MyColor.darkGrey),
                          ],
                          annotations: const <GaugeAnnotation>[
                            // GaugeAnnotation(
                            //     angle: 270,
                            //     positionFactor: 0.1,
                            //     widget:
                            //         Text('Working 34%', style: MyStyle.tx13b)),
                          ],
                        ),
                      ],
                    ),
                    Text('Working 34%', style: MyStyle.tx13b),
                    Text(
                      '₹ 5,00,000',
                      style: MyStyle.tx20b,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
