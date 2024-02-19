import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../values/myColor.dart';
import '../../values/myStyle.dart';

class Nail extends StatefulWidget {
  const Nail({super.key});

  @override
  State<Nail> createState() => _NailState();
}

class _NailState extends State<Nail> {
  int _current = 0;
  CarouselController carouselController = CarouselController();
  bool onLikeClick = false;
  final List<String> imgList = [
    // 'assets/images/img31.png',
    'assets/images/img45.png',
    'assets/images/img45.png',
    'assets/images/img45.png',
    'assets/images/img45.png',
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: MyColor.grey,
      appBar: AppBar(
        scrolledUnderElevation: 0,
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
          'Image',
          style: MyStyle.tx16b,
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 36,
              width: 36,
              padding: const EdgeInsets.all(0),
              margin: const EdgeInsets.all(15),
              color: MyColor.grey,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Center(
                  child: Image.asset(
                    'assets/icons/share.png',
                    // height: 22,
                    // width: 22,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
            color: MyColor.white,
            child: Text(
              'ColorSoul Glam Nail Enamel',
              style: MyStyle.tx14b.copyWith(
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins-Medium',
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // Container(
          //   color: MyColor.grey,
          //   // width: MediaQuery.of(context).size.width,
          //   // height: MediaQuery.of(context).size.height,
          //   child: Padding(
          //     padding: const EdgeInsets.all(15.0),
          //     child: Image.asset(
          //       'assets/images/img41.png',
          //       // width: 383,
          //       // height: 479,
          //       fit: BoxFit.fill,
          //     ),
          //   ),
          // ),
          Container(
            color: MyColor.grey,
            margin: EdgeInsets.zero,
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
            child: CarouselSlider.builder(
              carouselController: carouselController,
              options: CarouselOptions(
                // enlargeCenterPage: true,
                padEnds: false,
                viewportFraction: 1,
                // aspectRatio: 10.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 300),
                enableInfiniteScroll: true,
                height: MediaQuery.of(context).size.height * 0.46,
              ),
              itemCount: imgList.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Image.asset(
                  imgList[index],
                  width: 390,
                  fit: BoxFit.fill,
                );
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),

          //Slider Indicator
          Container(
            height: height * 0.07,
            color: MyColor.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                print(entry);
                return Row(
                  children: [
                    InkWell(
                      onTap: () => carouselController.animateToPage(entry.key),
                      child: Container(
                        width: 9,
                        height: 9,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == entry.key
                                ? MyColor.black
                                : MyColor.grey),
                        margin: const EdgeInsets.only(right: 8),
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),

          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/img44.png',
                    height: 110,
                    width: 116,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/img42.png',
                    height: 110,
                    width: 116,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/img43.png',
                    height: 110,
                    width: 116,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
