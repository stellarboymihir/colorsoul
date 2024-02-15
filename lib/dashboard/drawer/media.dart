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
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //  Search Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                height: 8,
              ),

              //  Images
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Image.asset(
                  'assets/images/img12.png',
                  // height: 168,
                  // width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                ),
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
                        },
                        child: Container(
                          height: 44,
                          width: 116,
                          color: _onClick == 'video'
                              ? MyColor.grey
                              : MyColor.black,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/icons/youtube.png',
                                  color: _onClick == 'video'
                                      ? MyColor.black
                                      : MyColor.white,
                                  height: 25,
                                  width: 25,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Video',
                                  style: _onClick == 'video'
                                      ? MyStyle.tx12b.copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Poppins-Medium',
                                        )
                                      : MyStyle.tx12w.copyWith(
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
                          height: 44,
                          width: 116,
                          color: _onClick == 'video'
                              ? MyColor.black
                              : MyColor.grey,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/icons/square.png',
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
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Poppins-Medium',
                                        )
                                      : MyStyle.tx12b.copyWith(
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
                          height: 44,
                          width: 116,
                          color: _onClick == 'catalog'
                              ? MyColor.grey
                              : MyColor.black,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/icons/file.png',
                                  color: _onClick == 'catalog'
                                      ? MyColor.black
                                      : MyColor.white,
                                  height: 25,
                                  width: 25,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Catalog',
                                  style: _onClick == 'catalog'
                                      ? MyStyle.tx12b.copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Poppins-Medium',
                                        )
                                      : MyStyle.tx12w.copyWith(
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
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: MyColor.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
