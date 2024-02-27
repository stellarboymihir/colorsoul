import 'package:colorsoul/constants/routes.dart';
import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../values/myColor.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController otpController = TextEditingController();

  Color _welPinBorderColor = MyColor.grey;

  String? validateLoginPin(String? value) {
    print("Value of login pin: $value");
    if (value!.isEmpty) {
      return 'Please Enter 4 digit Login PIN';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SizedBox(
          height: height,
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                Center(
                  child: Image.asset(
                    'assets/icons/logo.png',
                    height: 160,
                    width: 196,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Welcome',
                  style: MyStyle.tx40b.copyWith(fontSize: 32),
                ),
                Text(
                  'Samar Shah',
                  style: MyStyle.tx20b.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    fontFamily: 'Poppins-Regular',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  // height: 50,
                  width: 250,
                  child: PinInputTextFormField(
                    pinLength: 4,
                    controller: otpController,
                    validator: validateLoginPin,
                    onChanged: (value) {
                      setState(() {
                        _welPinBorderColor = validateLoginPin(value) == null
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
                  height: 15,
                ),
                const Text(
                  'Enter 4 digit Login PIN or Use Fingerprint',
                  style: MyStyle.tx12b,
                ),
                const SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/icons/fingerprint.png',
                  height: 48,
                  width: 48,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, signInPageRoute);
                  },
                  child: SizedBox(
                    child: Text(
                      'Unlock/Forgot Login PIN?',
                      style: MyStyle.tx14b.copyWith(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins-ExtraBold',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () async {
          if (_formKey.currentState!.validate()) {
            print('Validating');
            SharedPreferences preferences =
                await SharedPreferences.getInstance();
            var myPin = preferences.getString('pin');
            //TODO: GET VALE FROM SHARE PREF
            /// CHECH IF ENTER VALUE == SHARED PREF PIN VALUE THE NAVIGATE
            /// -> DASHBOARD
            /// ELSE SHOW TOAST MESSAGE 'INVALID PIN'
            ///

            if (otpController.text == myPin) {
              Navigator.pushNamed(context, dashboardRoute);
            } else {
              Fluttertoast.showToast(
                  msg: "Invalid Pin", backgroundColor: MyColor.grey);
              // Navigator.pushNamed(context, signInPageRoute);
            }
            print(otpController.text);
            // Navigator.pushNamed(context, dashboardRoute);
          }
        },
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.fromLTRB(15, 0, 15, 20),
          color: MyColor.black,
          child: const Center(
            child: Text(
              'CONTINUE',
              style: MyStyle.tx20W,
            ),
          ),
        ),
      ),
    );
  }
}
