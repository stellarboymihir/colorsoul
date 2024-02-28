import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../api_handler/api_handler.dart';
import '../../values/myColor.dart';
import '../../values/myStyle.dart';

class ResetDevice extends StatefulWidget {
  const ResetDevice({super.key});

  @override
  State<ResetDevice> createState() => _ResetDeviceState();
}

class _ResetDeviceState extends State<ResetDevice> {
  final _formKey = GlobalKey<FormState>();
  Color _phoneNumberBorderColor = MyColor.grey;

  bool resetButton = true;

  TextEditingController resetController = TextEditingController();

  resetApi() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var deviceId = preferences.getString("deviceId") ?? "";
    print("Device Id is: $deviceId");

    var resetDeviceBody = {
      "mobile_no": resetController.text,
      "device_id": deviceId,
    };
    print(json.encode(resetDeviceBody));

    var response =
        await ApiHandler.normalPost(resetDeviceBody, '/reset_device_id');
    print("90-====== $response");

    if (response['st'] == "success") {
      var mobile = response['mobile_no'];

      preferences.setString('mobile', "$mobile");

      print("$response['mobile']");
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SizedBox(
          height: height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.110,
                ),
                Image.asset(
                  'assets/icons/colorsol.png',
                  height: 40,
                  width: 200,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/icons/forgotPass.png',
                  width: 190,
                  height: 159,
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Reset Your Device',
                  style: MyStyle.tx32b.copyWith(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Poppins-Bold',
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Center(
                    child: Text(
                      'Enter your mobile phone number '
                      'associated with your Colorsoul account.',
                      textAlign: TextAlign.center,
                      style: MyStyle.tx14b.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    controller: resetController,
                    validator: validatePhoneNumber,
                    autocorrect: false,
                    style: MyStyle.tx14b,
                    onChanged: (value) {
                      setState(() {
                        _phoneNumberBorderColor =
                            validatePhoneNumber(value) == null
                                ? MyColor.red
                                : MyColor.grey;
                      });
                    },
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        width: 50,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '+91',
                              textAlign: TextAlign.center,
                              style: MyStyle.tx20b.copyWith(
                                fontSize: 14,
                                fontFamily: 'Poppins-SemiBold',
                              ),
                            ),
                            const SizedBox(
                              height: 60,
                              child: VerticalDivider(
                                color: MyColor.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.red,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.grey,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.grey,
                        ),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.grey,
                        ),
                      ),
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(10),
                    ],
                    keyboardType: TextInputType.phone,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          if (_formKey.currentState!.validate()) {
            print("Validated");
          } else {
            print("Not Validated");
          }
          // forgotPassword();
          // Navigator.pushNamed(context, forgotOtpPassRoute);
        },
        child: Container(
          height: 50,
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          width: width,
          color: MyColor.black,
          child: Center(
            child: Text(
              'Continue',
              style: MyStyle.tx20W
                  .copyWith(fontFamily: 'Poppins-SemiBold', fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }

  String? validatePhoneNumber(String? value) {
    if (value!.isEmpty) {
      if (value.length < 10) {
        return 'Phone Number must be at least 10 digits';
      }
    }
    return null;
  }
}
