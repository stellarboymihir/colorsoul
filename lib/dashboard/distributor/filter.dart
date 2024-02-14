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
  double _currSliderValue = 0;

  final List<Map<String, dynamic>> stateList = [
    {
      "title": 'AndraPradesh',
      'onPressed': false,
    },
    {
      "title": 'Arunachal Pradesh',
      'onPressed': false,
    },
    {
      "title": 'Assam',
      'onPressed': false,
    },
    {
      "title": 'Bihar',
      'onPressed': false,
    },
    {
      "title": 'Chhattisgarh',
      'onPressed': false,
    },
    {
      "title": 'Goa',
      'onPressed': false,
    },
    {
      "title": 'Gujarat	',
      'onPressed': false,
    },
    {
      "title": 'Haryana	',
      'onPressed': false,
    },
    {
      "title": 'Himachal Pradesh',
      'onPressed': false,
    },
    {
      "title": 'Jharkhand',
      'onPressed': false,
    },
  ];
  final List<Map<String, dynamic>> regionList = [
    {
      "title": 'South',
      'onPressed': false,
    },
    {
      "title": 'Central',
      'onPressed': false,
    },
    {
      "title": 'North',
      'onPressed': false,
    },
    {
      "title": 'Saurashtra',
      'onPressed': false,
    },
    {
      "title": 'Kutch',
      'onPressed': false,
    },
  ];
  final List<Map<String, dynamic>> cityList = [
    {
      "title": 'Surat',
      'onPressed': false,
    },
    {
      "title": 'Bharuch',
      'onPressed': false,
    },
    {
      "title": 'Narmada',
      'onPressed': false,
    },
    {
      "title": 'Navsari',
      'onPressed': false,
    },
    {
      "title": 'Dang',
      'onPressed': false,
    },
    {
      "title": 'Valsad',
      'onPressed': false,
    },
    {
      "title": 'Tapi',
      'onPressed': false,
    },
    {
      "title": 'Ahmedabad',
      'onPressed': false,
    },
    {
      "title": 'GandhiNagar',
      'onPressed': false,
    },
    {
      "title": 'Rajkot',
      'onPressed': false,
    },
    {
      "title": 'Vadodara',
      'onPressed': false,
    },
  ];
  final List<Map<String, dynamic>> areaList = [
    {
      "title": 'Althan',
      'onPressed': false,
    },
    {
      "title": 'Mandvi',
      'onPressed': false,
    },
    {
      "title": 'Bardoli',
      'onPressed': false,
    },
    {
      "title": 'Palsana',
      'onPressed': false,
    },
    {
      "title": 'Mahuva',
      'onPressed': false,
    },
    {
      "title": 'Kamrej',
      'onPressed': false,
    },
    {
      "title": 'Mangrol',
      'onPressed': false,
    },
    {
      "title": 'Choryasi',
      'onPressed': false,
    },
    {
      "title": 'Olpad',
      'onPressed': false,
    },
    {
      "title": 'Umarpada',
      'onPressed': false,
    },
    {
      "title": 'Adajan',
      'onPressed': false,
    },
    {
      "title": 'Katargam',
      'onPressed': false,
    },
    {
      "title": 'Godadara',
      'onPressed': false,
    },
    {
      "title": 'Athwalines',
      'onPressed': false,
    },
    {
      "title": 'Bhagal',
      'onPressed': false,
    },
    {
      "title": 'Gopipura',
      'onPressed': false,
    },
    {
      "title": 'Limbayat',
      'onPressed': false,
    },
  ];
  final List<Map<String, dynamic>> radiusList = [
    {
      "title": '5 Km',
      'onPressed': false,
    },
    {
      "title": '10 Km',
      'onPressed': false,
    },
    {
      "title": '15 Km',
      'onPressed': false,
    },
    {
      "title": '20 Km',
      'onPressed': false,
    },
    {
      "title": 'Custom',
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
                margin: const EdgeInsets.only(left: 11),
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
              onPressed == 'state' ? stateFilter() : const SizedBox(),
              onPressed == 'region' ? regionFilter() : const SizedBox(),
              onPressed == 'city' ? cityFilter() : const SizedBox(),
              onPressed == 'area' ? areaFilter() : const SizedBox(),
              onPressed == 'radius' ? radiusFilter() : const SizedBox(),
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
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: stateList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Checkbox(
                  activeColor: MyColor.black,
                  value: stateList[index]["onPressed"],
                  onChanged: (bool? val) {
                    setState(() {
                      // Unselect all other checkboxes
                      for (int i = 0; i < stateList.length; i++) {
                        if (i != index) {
                          stateList[i]["onPressed"] = false;
                        }
                      }
                      //Select the current checkbox
                      stateList[index]["onPressed"] = val!;
                    });
                  },
                ),
                Text(
                  '${stateList[index]["title"]}',
                  style: MyStyle.tx14b.copyWith(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins-Medium",
                  ),
                ),
                const SizedBox(
                  height: 0,
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget regionFilter() {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        child: ListView.builder(
          itemCount: regionList.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Checkbox(
                  activeColor: MyColor.black,
                  value: regionList[index]["onPressed"],
                  onChanged: (bool? val) {
                    setState(() {
                      // Unselect all other checkboxes
                      for (int i = 0; i < regionList.length; i++) {
                        if (i != index) {
                          regionList[i]["onPressed"] = false;
                        }
                      }
                      //Select the current checkbox
                      regionList[index]["onPressed"] = val!;
                    });
                  },
                ),
                Text(
                  '${regionList[index]["title"]}',
                  style: MyStyle.tx14b.copyWith(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins-Medium",
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget cityFilter() {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        child: ListView.builder(
          itemCount: cityList.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Checkbox(
                  activeColor: MyColor.black,
                  value: cityList[index]["onPressed"],
                  onChanged: (bool? val) {
                    setState(() {
                      // Unselect all other checkboxes
                      for (int i = 0; i < cityList.length; i++) {
                        if (i != index) {
                          cityList[i]["onPressed"] = false;
                        }
                      }
                      //Select the current checkbox
                      cityList[index]["onPressed"] = val!;
                    });
                  },
                ),
                Text(
                  '${cityList[index]["title"]}',
                  style: MyStyle.tx14b.copyWith(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins-Medium",
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget areaFilter() {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        child: ListView.builder(
          itemCount: areaList.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Checkbox(
                  activeColor: MyColor.black,
                  value: areaList[index]["onPressed"],
                  onChanged: (bool? val) {
                    setState(() {
                      // Unselect all other checkboxes
                      for (int i = 0; i < areaList.length; i++) {
                        if (i != index) {
                          areaList[i]["onPressed"] = false;
                        }
                      }
                      //Select the current checkbox
                      areaList[index]["onPressed"] = val!;
                    });
                  },
                ),
                Text(
                  '${areaList[index]["title"]}',
                  style: MyStyle.tx14b.copyWith(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins-Medium",
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget radiusFilter() {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: radiusList.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Checkbox(
                      activeColor: MyColor.black,
                      value: radiusList[index]["onPressed"],
                      onChanged: (bool? val) {
                        setState(() {
                          // Unselect all other checkboxes
                          for (int i = 0; i < radiusList.length; i++) {
                            if (i != index) {
                              radiusList[i]["onPressed"] = false;
                            }
                          }
                          //Select the current checkbox
                          radiusList[index]["onPressed"] = val!;
                        });
                      },
                    ),
                    Text(
                      '${radiusList[index]["title"]}',
                      style: MyStyle.tx14b.copyWith(
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins-Medium",
                      ),
                    ),
                  ],
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1km',
                    style: MyStyle.tx12b.copyWith(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins-Regular',
                    ),
                  ),
                  Text(
                    '30km',
                    style: MyStyle.tx12b.copyWith(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins-Regular',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: MyColor.black,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/icons/minus.png',
                        width: 8,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Slider(
                      label: _currSliderValue.toStringAsFixed(2),
                      min: 0,
                      max: 30,
                      divisions: 10,
                      activeColor: MyColor.black,
                      value: _currSliderValue.toDouble(),
                      onChanged: (double value) {
                        setState(() {
                          _currSliderValue = value;
                        });
                      },
                    ),
                  ),
                  Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: MyColor.black,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/icons/add.png',
                        width: 8,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
