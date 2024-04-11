import 'package:colorsoul/constants/routes.dart';
import 'package:colorsoul/values/myColor.dart';
import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../api_handler/api_handler.dart';

class Pin extends StatefulWidget {
  const Pin({super.key});

  @override
  State<Pin> createState() => _PinState();
}

class _PinState extends State<Pin> {
  final formKey = GlobalKey<FormState>();
  TextEditingController pinController = TextEditingController();
  TextEditingController pinConfirmController = TextEditingController();

  Color _enterPinColor = MyColor.grey;
  Color _confirmPinColor = MyColor.grey;

  @override
  void initState() {
    super.initState();
  }

  //  Method For ValidateEnterPin
  String? validateEnterPin(String? value) {
    print("Value of 1 pin: $value");
    if (value!.isEmpty) {
      return 'Please Enter 4 digit Login PIN';
    } else {
      return null;
    }
  }

  // Method For ValidateConfirmPin
  String? validateConfirmPin(String? value) {
    print("Value of 2 pin: $value");
    print(pinConfirmController.text);
    if (pinController.text != pinConfirmController.text) {
      print("pins are Not same");
      return 'Pins does not match';
    } else {
      print("Same");
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              Image.asset(
                'assets/icons/logo.png',
                height: 160,
                width: 196,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Generate PIN',
                style: MyStyle.tx40b
                    .copyWith(fontFamily: 'Poppins-Bold', fontSize: 34),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Text(
                      'Enter 4 digit Login PIN ',
                      textAlign: TextAlign.start,
                      style: MyStyle.tx12b.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                // height: 50,
                width: 250,
                child: PinInputTextFormField(
                  pinLength: 4,
                  controller: pinController,
                  validator: validateEnterPin,
                  onChanged: (value) {
                    setState(() {
                      _enterPinColor = validateEnterPin(value) == null
                          ? MyColor.red
                          : MyColor.grey;
                    });
                  },
                  decoration: BoxLooseDecoration(
                    strokeColorBuilder: PinListenColorBuilder(
                      MyColor.grey,
                      MyColor.grey,
                    ),
                    bgColorBuilder: const FixedColorBuilder(MyColor.white),
                    radius: Radius.zero,
                    strokeWidth: 1,
                    gapSpace: 8,
                  ),
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Text(
                      'Confirm 4 digit Login PIN',
                      textAlign: TextAlign.start,
                      style: MyStyle.tx12b.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                // height: 50,
                width: 250,
                margin: const EdgeInsets.symmetric(horizontal: 50),
                child: PinInputTextFormField(
                  pinLength: 4,
                  controller: pinConfirmController,
                  validator: validateConfirmPin,
                  onChanged: (value) {
                    setState(() {
                      _confirmPinColor = validateConfirmPin(value) == null
                          ? MyColor.red
                          : MyColor.grey;
                    });
                  },
                  decoration: BoxLooseDecoration(
                    strokeColorBuilder: PinListenColorBuilder(
                      MyColor.grey,
                      MyColor.grey,
                    ),
                    bgColorBuilder: const FixedColorBuilder(MyColor.white),
                    radius: Radius.zero,
                    strokeWidth: 1,
                    gapSpace: 8,
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () async {
          if (formKey.currentState!.validate()) {
            print('Validating');
            // SharedPreferences preferences =
            //     await SharedPreferences.getInstance();
            // await preferences.setString('pin', pinController.text);
            // loader();
            print("loading");
            Navigator.pushNamed(context, dashboardRoute);
          } else {
            Navigator.pushNamed(context, dashboardRoute);

            print("Not validating");
          }
          // Navigator.pushNamedAndRemoveUntil(
          //     context, dashboardRoute, (route) => false);
        },
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
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
    );
  }

  Future loader() {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1),
            ),
            backgroundColor: MyColor.white,
            content: Row(
              children: [
                const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(MyColor.black),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'Loading...',
                  style: MyStyle.tx14b.copyWith(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins-SemiBold',
                  ),
                ),
              ],
            ),
          );
        });
  }
}
