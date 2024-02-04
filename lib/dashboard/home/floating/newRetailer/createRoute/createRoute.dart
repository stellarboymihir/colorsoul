import 'package:colorsoul/constants/routes.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../../../values/myColor.dart';
import '../../../../../values/myStyle.dart';

class CreateRoute extends StatefulWidget {
  const CreateRoute({super.key});

  @override
  State<CreateRoute> createState() => _CreateRouteState();
}

class _CreateRouteState extends State<CreateRoute> {
  final List<String> _stateList = <String>[
    'Gujarat',
    'Maharashtra',
    'Rajasthan',
    'Delhi',
    'Tamil Nadu',
    'Karnataka',
  ];
  String? selectedList;

  final List<String> _regionList = [
    'East',
    'West',
    'North',
    'South',
    'Pune',
    'Mumbai',
  ];
  String? regionSelected;

  final List<String> _areaList = [
    'Vastral',
    'Navrang Pura',
    'SG Road',
    'Shyamal',
    'Gandhi Ashram',
    'Naroda',
  ];
  String? areaSelected;

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
            height: 40,
            width: 40,
            margin: const EdgeInsets.symmetric(horizontal: 12),
            child: Image.asset(
              'assets/icons/back.png',
              height: 40,
              width: 40,
            ),
          ),
        ),
        title: Text(
          'Create Route',
          style: MyStyle.tx16b.copyWith(
            fontFamily: 'Poppins-Bold',
          ),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //  State
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Text(
                      'State',
                      style: MyStyle.tx14b.copyWith(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto-Medium',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButtonFormField2<String>(
                    style: MyStyle.tx12b,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.only(left: 4.0),
                    ),
                    value: selectedList,
                    isExpanded: true,
                    onChanged: (String? value) {
                      print(value);
                      setState(() {
                        selectedList = null;
                        selectedList = value!;
                      });
                    },
                    // dropdownColor: MyColor.black.withOpacity(0.25),
                    items: _stateList.map<DropdownMenuItem<String>>((list) {
                      print(list);
                      return DropdownMenuItem<String>(
                        value: list,
                        child: Text(
                          list,
                          style: MyStyle.tx12b.copyWith(
                            color: MyColor.black,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //  Regional
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Text(
                      'Regional',
                      style: MyStyle.tx14b.copyWith(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto-Medium',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButtonFormField2<String>(
                    style: MyStyle.tx12b,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.only(left: 4.0),
                    ),
                    value: regionSelected,
                    isExpanded: true,
                    onChanged: (String? value) {
                      print(value);
                      setState(() {
                        regionSelected = null;
                        regionSelected = value!;
                      });
                    },
                    // dropdownColor: MyColor.black.withOpacity(0.25),
                    items: _regionList.map<DropdownMenuItem<String>>((list) {
                      print(list);
                      return DropdownMenuItem<String>(
                        value: list,
                        child: Text(
                          list,
                          style: MyStyle.tx12b.copyWith(
                            color: MyColor.black,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //  Area
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Text(
                      'Area',
                      style: MyStyle.tx14b.copyWith(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto-Medium',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButtonFormField2<String>(
                    style: MyStyle.tx12b,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.only(left: 4.0),
                    ),
                    value: areaSelected,
                    isExpanded: true,
                    onChanged: (String? value) {
                      print(value);
                      setState(() {
                        areaSelected = null;
                        areaSelected = value!;
                      });
                    },
                    // dropdownColor: MyColor.black.withOpacity(0.25),
                    items: _areaList.map<DropdownMenuItem<String>>((list) {
                      print(list);
                      return DropdownMenuItem<String>(
                        value: list,
                        child: Text(
                          list,
                          style: MyStyle.tx12b.copyWith(
                            color: MyColor.black,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, createRouteFloating);
                },
                child: Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width,
                  color: MyColor.black,
                  child: const Center(
                    child: Text(
                      'Create list',
                      style: MyStyle.tx20W,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
