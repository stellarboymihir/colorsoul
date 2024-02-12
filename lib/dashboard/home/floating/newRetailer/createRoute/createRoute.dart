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
            margin: const EdgeInsets.fromLTRB(15, 10, 0, 10),
            color: MyColor.grey,
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 16,
              ),
            ),
          ),
        ),
        leadingWidth: 50,
        title: const Text(
          'Create Route',
          style: MyStyle.tx16b,
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              //  State
              Text(
                'State',
                style: MyStyle.tx14b.copyWith(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto-Medium',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
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
                      contentPadding: EdgeInsets.zero,
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
              const SizedBox(
                height: 15,
              ),
              //  Regional
              Text(
                'Regional',
                style: MyStyle.tx14b.copyWith(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto-Medium',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 50,
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
                      contentPadding: EdgeInsets.zero,
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
              const SizedBox(
                height: 15,
              ),

              //  Area
              Text(
                'Area',
                style: MyStyle.tx14b.copyWith(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto-Medium',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 50,
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
                      contentPadding: EdgeInsets.zero,
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pushNamed(context, createRouteFloating);
        },
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.fromLTRB(15, 0, 15, 20),
          color: MyColor.black,
          child: Center(
            child: Text(
              'Create list',
              style: MyStyle.tx20W
                  .copyWith(fontFamily: 'Poppins-SemiBold', fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
