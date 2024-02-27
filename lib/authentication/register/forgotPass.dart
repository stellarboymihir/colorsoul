import 'package:colorsoul/api_handler/api_handler.dart';
import 'package:colorsoul/constants/routes.dart';
import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../values/myColor.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  TextEditingController forgotPassController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    //TODO: Submit button call api
    //// User inp

    forgotPassword() async {
      SharedPreferences preferences = await SharedPreferences.getInstance();

      var forgotPassBody = {
        "mobile": forgotPassController.text,
      };

      var response =
          await ApiHandler.normalPost(forgotPassBody, '/forget_password');
      // TODO: Get User Mo No:
      print(response);

      if (response['st'] == "success") {
        var mobile = response['mobile'];
        preferences.getString(
          "mobile",
        );
      }
    }

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
                  'Forgot Password?',
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
                  height: 50,
                  width: width,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    controller: forgotPassController,
                    style: MyStyle.tx14b,
                    validator: (value) {},
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              color: MyColor.grey,
                            ),
                          ),
                        ),
                        child: Text(
                          '+91',
                          textAlign: TextAlign.center,
                          style: MyStyle.tx20b.copyWith(
                            fontSize: 14,
                            fontFamily: 'Poppins-SemiBold',
                          ),
                        ),
                      ),
                      contentPadding: const EdgeInsets.only(left: 40),
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
          forgotPassword();
          Navigator.pushNamed(context, forgotOtpPassRoute);
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
}
