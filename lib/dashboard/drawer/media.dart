import 'package:colorsoul/constants/routes.dart';
import 'package:flutter/material.dart';

import '../../values/myColor.dart';
import '../../values/myStyle.dart';

class MediaCenter extends StatefulWidget {
  const MediaCenter({super.key});

  @override
  State<MediaCenter> createState() => _MediaCenterState();
}

class _MediaCenterState extends State<MediaCenter> {
  TextEditingController searchController = TextEditingController();
  var _onClick = 'video';
  final List<Map<String, dynamic>> videoList = [
    {
      "Text": 'ColorSoul Glam Nail',
      "Nail": 'assets/images/img13.png',
    },
    {
      "Text": 'ColorSoul Rise Nail',
      "Nail": 'assets/images/img14.png',
    },
    {
      "Text": 'ColorSoul Bliss Nail',
      "Nail": 'assets/images/img15.png',
    },
    {
      "Text": 'ColorSoul Glam Nail',
      "Nail": 'assets/images/img16.png',
    },
    {
      "Text": 'MyGlamm POPXO',
      "Nail": 'assets/images/img17.png',
    },
    {
      "Text": 'Nail Polish, ColorUP',
      "Nail": 'assets/images/img18.png',
    },
    {
      "Text": 'ColorSoul Glam Nail',
      "Nail": 'assets/images/img19.png',
    },
    {
      "Text": 'ColorSoul Glam Nail',
      "Nail": 'assets/images/img20.png',
    },
  ];
  final List<Map<String, dynamic>> imageList = [
    {
      "Text": 'ColorSoul Glam Nail Enamel',
      "Nail": 'assets/images/img21.png',
    },
    {
      "Text": 'ColorSoul Glam Nail',
      "Nail": 'assets/images/img22.png',
    },
    {
      "Text": 'ColorSoul Glam Nail',
      "Nail": 'assets/images/img23.png',
    },
    {
      "Text": 'ColorSoul Glam Nail Enamel',
      "Nail": 'assets/images/img24.png',
    },
    {
      "Text": 'ColorSoul Glam Nail',
      "Nail": 'assets/images/img25.png',
    },
    {
      "Text": 'ColorSoul Glam Nail',
      "Nail": 'assets/images/img26.png',
    },
    {
      "Text": 'ColorSoul Glam Nail Enamel',
      "Nail": 'assets/images/img27.png',
    },
    {
      "Text": 'ColorSoul Glam Nail Enamel',
      "Nail": 'assets/images/img28.png',
    },
    {
      "Text": 'ColorSoul Glam Nail',
      "Nail": 'assets/images/img29.png',
    },
  ];
  final List<Map<String, dynamic>> catalogList = [
    {
      "Text": 'ColorSoul Glam Nail Make-Up',
      "Nail": 'assets/images/img30.png',
    },
    {
      "Text": 'ColorSoul Glam Nail',
      "Nail": 'assets/images/img31.png',
    },
    {
      "Text": 'ColorSoul Glam Nail',
      "Nail": 'assets/images/img32.png',
    },
    {
      "Text": 'ColorSoul Glam Nail Enamel',
      "Nail": 'assets/images/img33.png',
    },
    {
      "Text": 'ColorSoul Glam Nail',
      "Nail": 'assets/images/img34.png',
    },
    {
      "Text": 'ColorSoul Glam Nail',
      "Nail": 'assets/images/img35.png',
    },
    {
      "Text": 'ColorSoul Glam Nail Enamel',
      "Nail": 'assets/images/img36.png',
    },
    {
      "Text": 'ColorSoul Glam Nail Enamel',
      "Nail": 'assets/images/img37.png',
    },
    {
      "Text": 'ColorSoul Glam Nail',
      "Nail": 'assets/images/img38.png',
    },
  ];
  String selectedImage = 'assets/images/img12.png';

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
          'Media Center',
          style: MyStyle.tx16b,
        ),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: MyStyle.tx14b,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: MyColor.grey,
                      ),
                      borderRadius: BorderRadius.circular(1),
                    ),
                    suffixIcon: const Icon(
                      Icons.search_outlined,
                      size: 16,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: MyColor.grey,
                      ),
                      borderRadius: BorderRadius.circular(1),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: MyColor.grey,
                      ),
                      borderRadius: BorderRadius.circular(1),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            //  Images
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: _onClick == 'image'
                  ? Image.asset(
                      'assets/images/img12.png',
                      fit: BoxFit.fill,
                    )
                  : SizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: _onClick == 'video'
                  ? Image.asset(
                      'assets/images/img39.png',
                      fit: BoxFit.fill,
                    )
                  : SizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: _onClick == 'catalog'
                  ? Image.asset(
                      'assets/images/img40.png',
                      fit: BoxFit.fill,
                    )
                  : SizedBox(),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                'Categories',
                style: MyStyle.tx14b.copyWith(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins-Bold',
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  //   Video
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _onClick = 'video';
                        });
                        videoMedia();
                      },
                      child: Container(
                        height: 40,
                        width: 116,
                        color:
                            _onClick == 'video' ? MyColor.black : MyColor.grey,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/youtube.png',
                                color: _onClick == 'video'
                                    ? MyColor.white
                                    : MyColor.black,
                                height: 25,
                                width: 25,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Video',
                                style: _onClick == 'video'
                                    ? MyStyle.tx12w.copyWith(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Poppins-Medium',
                                      )
                                    : MyStyle.tx12b.copyWith(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Poppins-Medium',
                                      ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  //   Image
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _onClick = 'image';
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 116,
                        color:
                            _onClick == 'image' ? MyColor.black : MyColor.grey,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/square.png',
                                color: _onClick == 'image'
                                    ? MyColor.white
                                    : MyColor.black,
                                height: 25,
                                width: 25,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Image',
                                style: _onClick == 'image'
                                    ? MyStyle.tx12w.copyWith(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Poppins-Medium',
                                      )
                                    : MyStyle.tx12b.copyWith(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Poppins-Medium',
                                      ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  //   Catalog
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _onClick = 'catalog';
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 116,
                        color: _onClick == 'catalog'
                            ? MyColor.black
                            : MyColor.grey,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/file.png',
                                color: _onClick == 'catalog'
                                    ? MyColor.white
                                    : MyColor.black,
                                height: 25,
                                width: 25,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Catalog',
                                style: _onClick == 'catalog'
                                    ? MyStyle.tx12w.copyWith(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Poppins-Medium',
                                      )
                                    : MyStyle.tx12b.copyWith(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Poppins-Medium',
                                      ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.51,
              color: MyColor.grey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    _onClick == 'video' ? videoMedia() : const SizedBox(),
                    _onClick == 'image' ? imageMedia() : const SizedBox(),
                    _onClick == 'catalog' ? catalogMedia() : const SizedBox(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget videoMedia() {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
        childAspectRatio: 3 / 2,
        crossAxisCount: 2,
      ),
      itemCount: videoList.length,
      itemBuilder: (BuildContext ctx, index) {
        return Column(
          children: [
            // const SizedBox(
            //   height: 20,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(),
                    child: Image.asset(
                      videoList[index]["Nail"],
                      height: 100,
                      width: 184,
                      color: MyColor.grey.withOpacity(0.6),
                      colorBlendMode: BlendMode.luminosity,
                    ),
                  ),
                  Positioned(
                    top: 37,
                    bottom: 37,
                    left: 66,
                    right: 66,
                    child: Image.asset(
                      'assets/icons/circle.png',
                      height: 24,
                      width: 24,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 60,
                    bottom: 30,
                    left: 15,
                    right: 15,
                    child: Text(
                      '${videoList[index]["Text"]}',
                      textAlign: TextAlign.center,
                      style: MyStyle.tx10b.copyWith(
                        fontFamily: 'Poppins-Medium',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget imageMedia() {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
        childAspectRatio: 3 / 3, // Adjust the aspect ratio here
        crossAxisCount: 3,
      ),
      itemCount: imageList.length,
      itemBuilder: (BuildContext ctx, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, nailRoute);
                },
                child: Image.asset(
                  imageList[index]["Nail"],
                  height: 90,
                  width: 115,
                  // color: MyColor.grey.withOpacity(0.6),
                  // colorBlendMode: BlendMode.luminosity,
                ),
              ),
              Text(
                '${imageList[index]["Text"]}',
                textAlign: TextAlign.center,
                style: MyStyle.tx10b.copyWith(
                  fontFamily: 'Poppins-Medium',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget catalogMedia() {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
        childAspectRatio: 3 / 3, // Adjust the aspect ratio here
        crossAxisCount: 3,
      ),
      itemCount: catalogList.length,
      itemBuilder: (BuildContext ctx, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              Image.asset(
                catalogList[index]["Nail"],
                height: 92,
                width: 115,
                // color: MyColor.grey.withOpacity(0.6),
                // colorBlendMode: BlendMode.luminosity,
              ),
              Text(
                '${catalogList[index]["Text"]}',
                textAlign: TextAlign.center,
                style: MyStyle.tx10b.copyWith(
                  fontFamily: 'Poppins-Medium',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
