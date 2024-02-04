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
            color: MyColor.grey,
            child: Center(
              child: Image.asset(
                'assets/icons/scan.png',
                height: 25,
                width: 25,
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 55,
            margin: EdgeInsets.all(12),
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
                    fontFamily: 'Roboto-SemiBold',
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Current Stock',
                  style: MyStyle.tx10b.copyWith(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto-SemiBold',
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
