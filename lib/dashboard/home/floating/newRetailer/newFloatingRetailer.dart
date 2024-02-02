import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../values/myColor.dart';
import '../../../../values/myStyle.dart';

class FloatingRetailer extends StatefulWidget {
  const FloatingRetailer({super.key});

  @override
  State<FloatingRetailer> createState() => _FloatingRetailerState();
}

class _FloatingRetailerState extends State<FloatingRetailer> {
  TextEditingController addressController = TextEditingController();
  TextEditingController distributorNameController = TextEditingController();
  TextEditingController pinController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  final List<String> _stateList = <String>[
    'Gujarat',
    'Maharashtra',
    'Rajasthan',
    'Delhi',
    'Tamil Nadu',
    'Karnataka',
  ];
  String? selectedList;

  final List<String> _cityList = [
    'Ahmedabad',
    'Bengaluru',
    'Delhi',
    'Chennai',
    'Pune',
    'Mumbai',
  ];
  String? citySelected;

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

  List<bool> _isSelected = [false, false];
  File? image;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(vertical: 12),
            padding: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              border: Border.all(
                color: MyColor.grey,
              ),
            ),
            child: InkWell(
              onTap: () async {
                await _pickerCam();
              },
              child: image != null
                  ? Image.file(
                      image!,
                      height: 54,
                      width: 54,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      'assets/icons/camera.png',
                      height: 54,
                      width: 54,
                    ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),

          //  Distributor Business Name
          Text(
            'Business Name',
            style: MyStyle.tx14b.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto-Medium',
            ),
          ),
          Container(
            // height: 55,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(
                color: MyColor.grey,
              ),
            ),
            child: Theme(
              data: Theme.of(context).copyWith(
                dividerColor: Colors.transparent,
              ),
              child: ExpansionTile(
                title: const Text(
                  '',
                  style: MyStyle.tx14b,
                ),
                trailing: const Icon(
                  // _customTileExpanded
                  //     ? Icons.arrow_drop_down_circle
                  //     : Icons.arrow_drop_down,
                  Icons.arrow_drop_down_sharp,
                  color: MyColor.black,
                ),
                shape: Border.all(color: MyColor.grey),
                children: <Widget>[
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Text(
                        //     // // 'Personal Vehicle',
                        //     // style: MyStyle.tx14b.copyWith(
                        //     //   fontFamily: 'Roboto-Med',
                        //     //   fontWeight: FontWeight.w400,
                        //     // ),
                        //     ),
                        Checkbox(
                            activeColor: MyColor.black,
                            value: _isSelected[0],
                            onChanged: (bool? val) {
                              setState(() {
                                _isSelected[0] = val!;
                              });
                            })
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Text(
                        //     // // 'Public Transport',
                        //     // style: MyStyle.tx14b.copyWith(
                        //     //   fontFamily: 'Roboto-Med',
                        //     //   fontWeight: FontWeight.w400,
                        //     // ),
                        //     ),
                        Checkbox(
                            activeColor: MyColor.black,
                            value: _isSelected[1],
                            onChanged: (bool? val) {
                              setState(() {
                                _isSelected[1] = val!;
                              });
                            })
                      ],
                    ),
                  ),
                ],
                onExpansionChanged: (bool expanded) {
                  setState(() {});
                },
              ),
            ),
          ),

          //  Business Type
          Text(
            'Business Type',
            style: MyStyle.tx14b.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto-Medium',
            ),
          ),
          Container(
            // height: 55,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(
                color: MyColor.grey,
              ),
            ),
            child: Theme(
              data: Theme.of(context).copyWith(
                dividerColor: Colors.transparent,
              ),
              child: ExpansionTile(
                title: const Text(
                  '',
                  style: MyStyle.tx14b,
                ),
                trailing: const Icon(
                  // _customTileExpanded
                  //     ? Icons.arrow_drop_down_circle
                  //     : Icons.arrow_drop_down,
                  Icons.arrow_drop_down_sharp,
                  color: MyColor.black,
                ),
                shape: Border.all(color: MyColor.grey),
                children: <Widget>[
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Text(
                        //     // // 'Personal Vehicle',
                        //     // style: MyStyle.tx14b.copyWith(
                        //     //   fontFamily: 'Roboto-Med',
                        //     //   fontWeight: FontWeight.w400,
                        //     // ),
                        //     ),
                        Checkbox(
                            activeColor: MyColor.black,
                            value: _isSelected[0],
                            onChanged: (bool? val) {
                              setState(() {
                                _isSelected[0] = val!;
                              });
                            })
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Text(
                        //     // // 'Public Transport',
                        //     // style: MyStyle.tx14b.copyWith(
                        //     //   fontFamily: 'Roboto-Med',
                        //     //   fontWeight: FontWeight.w400,
                        //     // ),
                        //     ),
                        Checkbox(
                            activeColor: MyColor.black,
                            value: _isSelected[1],
                            onChanged: (bool? val) {
                              setState(() {
                                _isSelected[1] = val!;
                              });
                            })
                      ],
                    ),
                  ),
                ],
                onExpansionChanged: (bool expanded) {
                  setState(() {});
                },
              ),
            ),
          ),

          Text(
            'Distributor Name',
            style: MyStyle.tx14b.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto-Medium',
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: MyColor.grey,
              ),
            ),
            margin: const EdgeInsets.symmetric(vertical: 12),
            child: TextFormField(
              controller: distributorNameController,
              decoration: const InputDecoration(
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
              keyboardType: TextInputType.name,
            ),
          ),

          //   Address
          Text(
            'Address',
            style: MyStyle.tx14b.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto-Medium',
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: MyColor.grey,
              ),
            ),
            margin: const EdgeInsets.symmetric(vertical: 12),
            child: TextFormField(
              controller: addressController,
              decoration: const InputDecoration(
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
              keyboardType: TextInputType.streetAddress,
            ),
          ),

          //    Dropdown
          Row(
            children: [
              // State
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'State',
                    style: MyStyle.tx14b.copyWith(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto-Medium',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 55,
                    width: 160,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: MyColor.grey,
                    )),
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
                ],
              ),
              const SizedBox(
                width: 10,
              ),

              //  City
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'City',
                    style: MyStyle.tx14b.copyWith(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto-Medium',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 55,
                    width: 160,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: MyColor.grey,
                    )),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButtonFormField2<String>(
                        isExpanded: true,
                        style: MyStyle.tx12b,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.only(left: 4.0),
                        ),
                        items: _cityList
                            .map((String item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                            .toList(),
                        value: citySelected,
                        onChanged: (String? value) {
                          setState(() {
                            citySelected = value;
                          });
                        },
                        buttonStyleData: const ButtonStyleData(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          height: 40,
                          width: 140,
                        ),
                        menuItemStyleData: const MenuItemStyleData(
                          height: 40,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              // Region
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Region',
                    style: MyStyle.tx14b.copyWith(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto-Medium',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 55,
                    width: 162,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: MyColor.grey,
                    )),
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
                        items:
                            _regionList.map<DropdownMenuItem<String>>((list) {
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
              const SizedBox(
                width: 10,
              ),

              //  Area
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Area',
                    style: MyStyle.tx14b.copyWith(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto-Medium',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 55,
                    width: 162,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: MyColor.grey,
                    )),
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
            ],
          ),
          const SizedBox(
            height: 10,
          ),

          //  Pin Code
          Text(
            'Pin code',
            style: MyStyle.tx14b.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto-Medium',
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: MyColor.grey,
              ),
            ),
            margin: const EdgeInsets.symmetric(vertical: 12),
            child: TextFormField(
              controller: pinController,
              decoration: const InputDecoration(
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
              keyboardType: TextInputType.number,
            ),
          ),

          const SizedBox(
            height: 5,
          ),
          //   Person Name
          Text(
            'Person Name ',
            style: MyStyle.tx14b.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto-Medium',
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: MyColor.grey,
              ),
            ),
            margin: const EdgeInsets.symmetric(vertical: 12),
            child: TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
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
              keyboardType: TextInputType.name,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          //     Mobile
          Text(
            'Mobile ',
            style: MyStyle.tx14b.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto-Medium',
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: MyColor.grey,
              ),
            ),
            margin: const EdgeInsets.symmetric(vertical: 12),
            child: TextFormField(
              controller: mobileController,
              decoration: const InputDecoration(
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
              keyboardType: TextInputType.phone,
            ),
          ),

          InkWell(
            onTap: () {},
            child: Container(
              height: 65,
              width: MediaQuery.of(context).size.width,
              color: MyColor.black,
              child: const Center(
                child: Text(
                  'Submit',
                  style: MyStyle.tx20W,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _pickerCam() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
        // Navigator.pop(context);
      });
    } on PlatformException catch (e) {
      print('Failed to pick Image: $e');
    }
  }
}
