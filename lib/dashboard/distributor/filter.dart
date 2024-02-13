import 'package:flutter/material.dart';

import '../../values/myColor.dart';
import '../../values/myStyle.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  TextEditingController searchController = TextEditingController();
  var onPressed = 'state';
  List<bool> onClickState = [false, false, false];

  final List<Map<String, dynamic>> stateList = [
    {
      "title": 'AndraPradesh',
      'onPressed': false,
    },
    {
      "title": 'Arunachal Pradesh',
      'onPressed': false,
    },{
      "title": 'Arunachal Pradesh',
      'onPressed': false,
    },{
      "title": 'Assam',
      'onPressed': false,
    },{
      "title": 'Bihar',
      'onPressed': false,
    },{
      "title": 'Chhattisgarh',
      'onPressed': false,
    },{
      "title": 'Goa',
      'onPressed': false,
    },{
      "title": 'Gujarat	',
      'onPressed': false,
    },{
      "title": 'Haryana	',
      'onPressed': false,
    },{
      "title": 'Himachal Pradesh',
      'onPressed': false,
    },{
      "title": 'Jharkhand',
      'onPressed': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.white,
        scrolledUnderElevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 36,
            width: 36,
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.fromLTRB(20, 12, 0, 12),
            color: MyColor.grey,
            child: const Center(
                child: Icon(
              Icons.arrow_back_ios_new,
              size: 16,
            )),
          ),
        ),
        title: const Text(
          'Filter',
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
              margin: const EdgeInsets.fromLTRB(0, 12, 20, 12),
              color: MyColor.grey,
              child: Center(
                child: Image.asset(
                  'assets/icons/x.png',
                  height: 12,
                  width: 12,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Row(
        children: [
          Container(
            width: width * 0.38,
            color: MyColor.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      onPressed = 'state';
                    });
                  },
                  child: Container(
                    width: height * 0.15,
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                    color: onPressed == 'state' ? MyColor.white : MyColor.grey,
                    child: Text(
                      'States',
                      textAlign: TextAlign.start,
                      style: MyStyle.tx14b.copyWith(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins-Bold',
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      onPressed = 'region';
                    });
                  },
                  child: Container(
                    width: height * 0.15,
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                    color: onPressed == 'region' ? MyColor.white : MyColor.grey,
                    child: Text(
                      'Region',
                      style: MyStyle.tx14b.copyWith(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins-Bold',
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      onPressed = 'city';
                    });
                  },
                  child: Container(
                    width: height * 0.15,
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                    color: onPressed == 'city' ? MyColor.white : MyColor.grey,
                    child: Text(
                      'City',
                      style: MyStyle.tx14b.copyWith(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins-Bold',
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      onPressed = 'area';
                    });
                  },
                  child: Container(
                    width: height * 0.15,
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                    color: onPressed == 'area' ? MyColor.white : MyColor.grey,
                    child: Text(
                      'Area',
                      style: MyStyle.tx14b.copyWith(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins-Bold',
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      onPressed = 'radius';
                    });
                  },
                  child: Container(
                    // height: 44,
                    width: height * 0.15,
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                    color: onPressed == 'radius' ? MyColor.white : MyColor.grey,
                    child: Text(
                      'Radius',
                      style: MyStyle.tx14b.copyWith(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins-Bold',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.55,
                margin: EdgeInsets.only(left: 11),
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
              onPressed == 'state' ? stateFilter() : SizedBox(),
            ],
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.fromLTRB(20, 0, 8, 20),
                          color: MyColor.black,
                          child: Center(
                            child: Text(
                              'Clear all',
                              style: MyStyle.tx20W.copyWith(fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.fromLTRB(8, 0, 20, 20),
                          color: MyColor.black,
                          child: Center(
                            child: Text(
                              'Apply',
                              style: MyStyle.tx20W.copyWith(fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget stateFilter() {
    return Column(
      children: [
        ListView.builder(itemCount: 3, itemBuilder: (context, index) {
          return Row(
            children: [
              Checkbox(value: onClickState[]
                , onChanged: (bool? val) {
                setState(() {
                  onClickState[] = val!;
                });
              },),
              Text('South'),
            ],
          )
        },),

      ],
    );
  }
}
