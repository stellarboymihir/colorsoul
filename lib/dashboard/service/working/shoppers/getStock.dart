import 'package:colorsoul/values/myColor.dart';
import 'package:flutter/material.dart';

import '../../../../values/myStyle.dart';

class GetStock extends StatefulWidget {
  const GetStock({super.key});

  @override
  State<GetStock> createState() => _GetStockState();
}

class _GetStockState extends State<GetStock> {
  TextEditingController searchController = TextEditingController();
  List<bool> onClick = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.white,
        leading: Container(
          height: 40,
          width: 40,
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.all(12),
          color: MyColor.grey,
          child: const Center(
              child: Icon(
            Icons.arrow_back_ios_new,
            size: 16,
          )),
        ),
        title: const Text(
          'Get Stock',
          style: MyStyle.tx16b,
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(12),
            color: MyColor.grey,
            child: Center(
              child: Image.asset(
                'assets/icons/scan.png',
                height: 25,
                width: 25,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          //  Search Bar
          Container(
            height: 55,
            margin: const EdgeInsets.all(12),
            width: MediaQuery.of(context).size.width,
            child: TextFormField(
              controller: searchController,
              decoration: const InputDecoration(
                hintText: 'Search',
                hintStyle: MyStyle.tx14b,
                isDense: true,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyColor.grey,
                  ),
                ),
                suffixIcon: Icon(
                  Icons.search_outlined,
                  size: 20,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyColor.grey,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyColor.grey,
                  ),
                ),
              ),
              keyboardType: TextInputType.text,
            ),
          ),

          //  List
          Container(
            height: 43,
            width: MediaQuery.of(context).size.width,
            color: MyColor.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Item',
                  style: MyStyle.tx10b.copyWith(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto-Medium',
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Current Stock',
                  style: MyStyle.tx10b.copyWith(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto-Medium',
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          //  Expansion Tile
          Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        onClick[0] = !onClick[0];
                      });
                    },
                    child: Container(
                      width: 32,
                      height: 56,
                      margin: const EdgeInsets.only(
                          left: 12, top: 10, bottom: 10, right: 4),
                      color: MyColor.grey,
                      child: onClick[0]
                          ? const Icon(Icons.arrow_drop_up)
                          : const Icon(Icons.arrow_drop_down),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 56,
                      // Use double.infinity to make the container take the maximum possible width
                      width: MediaQuery.of(context).size.width,
                      color: MyColor.grey,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      // margin: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Glam',
                            style: MyStyle.tx14b.copyWith(
                                // fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto-Medium',
                                fontSize: 16),
                          ),
                          Text(
                            'Total Stock: 100',
                            style: MyStyle.tx10b.copyWith(
                              fontSize: 12,
                              fontFamily: 'Roboto-Regular',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      width: 90,
                      height: 56,
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: MyColor.grey,
                        ),
                      ),
                      child: const Center(
                        child: Text('40'),
                      )),
                ],
              ),
              onClick[0]
                  ? const SizedBox()
                  : ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 50,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 1),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          width: MediaQuery.of(context).size.width,
                          color: MyColor.grey,
                          child: Row(
                            children: [
                              Text(
                                'Glam 01',
                                style: MyStyle.tx14b.copyWith(
                                  fontFamily: 'Roboto-Medium',
                                ),
                              ),
                              const Spacer(),
                              Text(
                                '05',
                                style: MyStyle.tx14b.copyWith(
                                  fontFamily: 'Roboto-Regular',
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        onClick[1] = !onClick[1];
                      });
                    },
                    child: Container(
                      width: 32,
                      height: 56,
                      margin: const EdgeInsets.only(
                          left: 12, top: 10, bottom: 10, right: 4),
                      color: MyColor.grey,
                      child: onClick[1]
                          ? const Icon(Icons.arrow_drop_up)
                          : const Icon(Icons.arrow_drop_down),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 56,
                      // Use double.infinity to make the container take the maximum possible width
                      width: MediaQuery.of(context).size.width,
                      color: MyColor.grey,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      // margin: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Glam',
                            style: MyStyle.tx14b.copyWith(
                                // fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto-Medium',
                                fontSize: 16),
                          ),
                          Text(
                            'Total Stock: 100',
                            style: MyStyle.tx10b.copyWith(
                              fontSize: 12,
                              fontFamily: 'Roboto-Regular',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      width: 90,
                      height: 56,
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: MyColor.grey,
                        ),
                      ),
                      child: const Center(
                        child: Text('40'),
                      )),
                ],
              ),
              onClick[1]
                  ? const SizedBox()
                  : ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 50,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 1),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          width: MediaQuery.of(context).size.width,
                          color: MyColor.grey,
                          child: Row(
                            children: [
                              Text(
                                'Glam 01',
                                style: MyStyle.tx14b.copyWith(
                                  fontFamily: 'Roboto-Medium',
                                ),
                              ),
                              const Spacer(),
                              Text(
                                '05',
                                style: MyStyle.tx14b.copyWith(
                                  fontFamily: 'Roboto-Regular',
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        onClick[2] = !onClick[2];
                      });
                    },
                    child: Container(
                      width: 32,
                      height: 56,
                      margin: const EdgeInsets.only(
                          left: 12, top: 10, bottom: 10, right: 4),
                      color: MyColor.grey,
                      child: onClick[2]
                          ? const Icon(Icons.arrow_drop_up)
                          : const Icon(Icons.arrow_drop_down),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 56,
                      // Use double.infinity to make the container take the maximum possible width
                      width: MediaQuery.of(context).size.width,
                      color: MyColor.grey,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      // margin: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Glam',
                            style: MyStyle.tx14b.copyWith(
                                // fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto-Medium',
                                fontSize: 16),
                          ),
                          Text(
                            'Total Stock: 100',
                            style: MyStyle.tx10b.copyWith(
                              fontSize: 12,
                              fontFamily: 'Roboto-Regular',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      width: 90,
                      height: 56,
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: MyColor.grey,
                        ),
                      ),
                      child: const Center(
                        child: Text('40'),
                      )),
                ],
              ),
              onClick[2]
                  ? const SizedBox()
                  : ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 50,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 1),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          width: MediaQuery.of(context).size.width,
                          color: MyColor.grey,
                          child: Row(
                            children: [
                              Text(
                                'Glam 01',
                                style: MyStyle.tx14b.copyWith(
                                  fontFamily: 'Roboto-Medium',
                                ),
                              ),
                              const Spacer(),
                              Text(
                                '05',
                                style: MyStyle.tx14b.copyWith(
                                  fontFamily: 'Roboto-Regular',
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        onClick[3] = !onClick[3];
                      });
                    },
                    child: Container(
                      width: 32,
                      height: 56,
                      margin: const EdgeInsets.only(
                          left: 12, top: 10, bottom: 10, right: 4),
                      color: MyColor.grey,
                      child: onClick[3]
                          ? const Icon(Icons.arrow_drop_up)
                          : const Icon(Icons.arrow_drop_down),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 56,
                      // Use double.infinity to make the container take the maximum possible width
                      width: MediaQuery.of(context).size.width,
                      color: MyColor.grey,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      // margin: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Glam',
                            style: MyStyle.tx14b.copyWith(
                                // fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto-Medium',
                                fontSize: 16),
                          ),
                          Text(
                            'Total Stock: 100',
                            style: MyStyle.tx10b.copyWith(
                              fontSize: 12,
                              fontFamily: 'Roboto-Regular',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      width: 90,
                      height: 56,
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: MyColor.grey,
                        ),
                      ),
                      child: const Center(
                        child: Text('40'),
                      )),
                ],
              ),
              onClick[3]
                  ? const SizedBox()
                  : ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 50,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 1),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          width: MediaQuery.of(context).size.width,
                          color: MyColor.grey,
                          child: Row(
                            children: [
                              Text(
                                'Glam 01',
                                style: MyStyle.tx14b.copyWith(
                                  fontFamily: 'Roboto-Medium',
                                ),
                              ),
                              const Spacer(),
                              Text(
                                '05',
                                style: MyStyle.tx14b.copyWith(
                                  fontFamily: 'Roboto-Regular',
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
