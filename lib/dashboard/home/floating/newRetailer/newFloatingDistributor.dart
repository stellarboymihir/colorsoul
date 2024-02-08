import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../values/myColor.dart';
import '../../../../values/myStyle.dart';

class FloatingDistributor extends StatefulWidget {
  const FloatingDistributor({super.key});

  @override
  State<FloatingDistributor> createState() => _FloatingDistributorState();
}

class _FloatingDistributorState extends State<FloatingDistributor> {
  TextEditingController addressController = TextEditingController();
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
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () async {
              await _pickerCam();
            },
            child: Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  color: MyColor.grey,
                ),
              ),
              child: image != null
                  ? Image.file(
                      image!,
                      height: 54,
                      width: 54,
                      fit: BoxFit.fill,
                    )
                  : Center(
                      child: Image.asset(
                        'assets/icons/camera.png',
                        height: 70,
                        width: 70,
                      ),
                    ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),

          //  Distributor Business Name
          Text(
            'Distributor Business Name',
            style: MyStyle.tx14b.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto-Medium',
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: MyColor.grey,
              ),
            ),
            child: Theme(
              data: Theme.of(context).copyWith(
                listTileTheme: ListTileTheme.of(context).copyWith(
                  dense: true,
                  minVerticalPadding: 0,
                ),
              ),
              child: ExpansionTile(
                title: const Text(
                  '',
                  style: MyStyle.tx14b,
                ),
                tilePadding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                childrenPadding: const EdgeInsets.only(
                  left: 14,
                ),
                trailing: const Icon(
                  Icons.arrow_drop_down_sharp,
                  size: 20,
                  color: MyColor.black,
                ),
                shape: Border.all(color: Colors.transparent),
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Business Name 1',
                        style: MyStyle.tx14b.copyWith(
                          fontFamily: 'Roboto-Regular',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          activeColor: MyColor.black,
                          value: _isSelected[0],
                          onChanged: (bool? val) {
                            setState(() {
                              _isSelected[0] = val!;
                            });
                          })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Business Name 2',
                        style: MyStyle.tx14b.copyWith(
                          fontFamily: 'Roboto-Regular',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          activeColor: MyColor.black,
                          value: _isSelected[1],
                          onChanged: (bool? val) {
                            setState(() {
                              _isSelected[1] = val!;
                            });
                          })
                    ],
                  ),
                ],
                onExpansionChanged: (bool expanded) {
                  setState(() {});
                },
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          //  Business Type
          Text(
            'Business Type',
            style: MyStyle.tx14b.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto-Medium',
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: MyColor.grey,
              ),
            ),
            child: Theme(
              data: Theme.of(context).copyWith(
                listTileTheme: ListTileTheme.of(context).copyWith(
                  dense: true,
                  minVerticalPadding: 0,
                ),
              ),
              child: ExpansionTile(
                title: const Text(
                  '',
                  style: MyStyle.tx14b,
                ),
                tilePadding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                childrenPadding: const EdgeInsets.only(
                  left: 14,
                ),
                trailing: const Icon(
                  Icons.arrow_drop_down_sharp,
                  size: 20,
                  color: MyColor.black,
                ),
                shape: Border.all(color: Colors.transparent),
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Business Type 1',
                        style: MyStyle.tx14b.copyWith(
                          fontFamily: 'Roboto-Regular',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          activeColor: MyColor.black,
                          value: _isSelected[0],
                          onChanged: (bool? val) {
                            setState(() {
                              _isSelected[0] = val!;
                            });
                          })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Business Type 2',
                        style: MyStyle.tx14b.copyWith(
                          fontFamily: 'Roboto-Regular',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          activeColor: MyColor.black,
                          value: _isSelected[1],
                          onChanged: (bool? val) {
                            setState(() {
                              _isSelected[1] = val!;
                            });
                          })
                    ],
                  ),
                ],
                onExpansionChanged: (bool expanded) {
                  setState(() {});
                },
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),

          //   Address
          Text(
            'Address',
            style: MyStyle.tx14b.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto-Medium',
            ),
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: TextFormField(
              controller: addressController,
              style: MyStyle.tx14b,
              decoration: const InputDecoration(
                // isDense: true,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 30,
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
          SizedBox(
            height: 15,
          ),
          //    Dropdown
          Row(
            children: [
              // State
              Expanded(
                child: Column(
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
                      height: 50,
                      // width: 160,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: MyColor.grey,
                        ),
                      ),
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
                          items: _stateList
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
                          value: selectedList,
                          onChanged: (String? value) {
                            setState(() {
                              selectedList = value;
                            });
                          },
                          selectedItemBuilder: (context) => _stateList
                              .map((value) => Text(
                                    value,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ))
                              .toList(),
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
              ),
              const SizedBox(
                width: 10,
              ),

              //  City
              Expanded(
                child: Column(
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
                      height: 50,
                      // width: 160,
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
                          selectedItemBuilder: (context) => _cityList
                              .map((value) => Text(
                                    value,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ))
                              .toList(),
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
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              // Region
              Expanded(
                child: Column(
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
                      height: 8,
                    ),
                    Container(
                      height: 50,
                      // width: 160,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: MyColor.grey,
                        ),
                      ),
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
                          selectedItemBuilder: (context) => _regionList
                              .map((value) => Text(
                                    value,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ))
                              .toList(),
                          items: _regionList
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
                          value: regionSelected,
                          onChanged: (String? value) {
                            setState(() {
                              regionSelected = value;
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
              ),
              const SizedBox(
                width: 8,
              ),

              //  Area
              Expanded(
                child: Column(
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
                      height: 8,
                    ),
                    Container(
                      height: 50,
                      // width: 160,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: MyColor.grey,
                        ),
                      ),
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
                          selectedItemBuilder: (context) => _areaList
                              .map((value) => Text(
                                    value,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ))
                              .toList(),
                          items: _areaList
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
                          value: areaSelected,
                          onChanged: (String? value) {
                            setState(() {
                              areaSelected = value;
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
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),

          //  Pin Code
          Text(
            'Pin code',
            style: MyStyle.tx14b.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto-Medium',
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: TextFormField(
              controller: pinController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 30,
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

          //   Person Name
          const SizedBox(
            height: 15,
          ),
          Text(
            'Person Name ',
            style: MyStyle.tx14b.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto-Medium',
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 30,
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
            height: 15,
          ),
          //     Mobile
          Text(
            'Mobile ',
            style: MyStyle.tx14b.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto-Medium',
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width,
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
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 50,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              width: MediaQuery.of(context).size.width,
              color: MyColor.black,
              child: Center(
                child: Text(
                  'Submit',
                  style: MyStyle.tx20W
                      .copyWith(fontFamily: 'Poppins-SemiBold', fontSize: 15),
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
