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
  CarouselController buttonCarouselController = CarouselController();
  bool onLikeClick = false;
  final List<String> imgList = [
    'assets/images/img32.png',
    'assets/images/img33.png',
    'assets/images/img34.png',
    'assets/images/img35.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'ColorSoul Glam Nail Enamel',
              style: MyStyle.tx14b.copyWith(
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins-Medium',
              ),
            ),
          ),
          SizedBox(
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
          CarouselSlider.builder(
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              padEnds: false,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
              enableInfiniteScroll: false,
              height: 264,
            ),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Image.asset(
                'assets/images/img41.png',
                fit: BoxFit.cover,
                // height: 264,
                // width: MediaQuery.of(context).size.width,
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),

          //Slider Indicator
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, commentRoute);
                },
                child: Image.asset(
                  'assets/icons/comment.png',
                  height: 24,
                  width: 24,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 55.0, right: 55.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.asMap().entries.map((entry) {
                      print(entry);
                      return Row(
                        children: [
                          InkWell(
                            onTap: () => buttonCarouselController
                                .animateToPage(entry.key),
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              width: 15,
                              height: 4.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              margin: const EdgeInsets.only(right: 10),
                              // color: _current == entry.key
                              //     ? MyColor.black
                              //     : MyColor.grey,
                              // color: MyColor.orange,
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
