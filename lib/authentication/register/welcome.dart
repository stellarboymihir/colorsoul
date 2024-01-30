import 'package:colorsoul/constants/routes.dart';
import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

import '../../values/myColor.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70.0),
                  child: Image.asset('assets/icons/logo.png'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Welcome',
                style: MyStyle.tx40b,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Samar Shah',
                style: MyStyle.tx20b.copyWith(
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Poppins-Regular',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 65,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: PinInputTextFormField(
                  pinLength:
                      4, // Set pinLength to 1 to allow only one digit per container
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
                  onSubmit: (pin) {
                    // Handle the submitted PIN
                    if (pin.length == 1) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Pin: $pin'),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Invalid Pin'),
                        ),
                      );
                    }
                  },
                ),
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Container(
              //       height: 65,
              //       width: 65,
              //       decoration: BoxDecoration(
              //         border: Border.all(
              //           color: MyColor.grey,
              //         ),
              //       ),
              //       child: Center(
              //         child: TextFormField(
              //           controller: otpController1,
              //           decoration: const InputDecoration(
              //             contentPadding: EdgeInsets.symmetric(
              //               horizontal: 20,
              //               vertical: 20,
              //             ),
              //             enabledBorder: OutlineInputBorder(
              //               borderSide: BorderSide(
              //                 color: MyColor.grey,
              //               ),
              //             ),
              //             focusedBorder: OutlineInputBorder(
              //               borderSide: BorderSide(
              //                 color: MyColor.grey,
              //               ),
              //             ),
              //             border: OutlineInputBorder(
              //               borderSide: BorderSide(
              //                 color: MyColor.grey,
              //               ),
              //             ),
              //           ),
              //           inputFormatters: [
              //             FilteringTextInputFormatter.digitsOnly,
              //             LengthLimitingTextInputFormatter(1),
              //           ],
              //           keyboardType: TextInputType.phone,
              //         ),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 10,
              //     ),
              //     Container(
              //       height: 65,
              //       width: 65,
              //       decoration: BoxDecoration(
              //         border: Border.all(
              //           color: MyColor.grey,
              //         ),
              //       ),
              //       child: Center(
              //         child: TextFormField(
              //           controller: otpController2,
              //           decoration: const InputDecoration(
              //             contentPadding: EdgeInsets.symmetric(
              //               horizontal: 20,
              //               vertical: 20,
              //             ),
              //             enabledBorder: OutlineInputBorder(
              //               borderSide: BorderSide(
              //                 color: MyColor.grey,
              //               ),
              //             ),
              //             focusedBorder: OutlineInputBorder(
              //               borderSide: BorderSide(
              //                 color: MyColor.grey,
              //               ),
              //             ),
              //             border: OutlineInputBorder(
              //               borderSide: BorderSide(
              //                 color: MyColor.grey,
              //               ),
              //             ),
              //           ),
              //           inputFormatters: [
              //             FilteringTextInputFormatter.digitsOnly,
              //             LengthLimitingTextInputFormatter(1),
              //           ],
              //           keyboardType: TextInputType.phone,
              //         ),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 10,
              //     ),
              //     Container(
              //       height: 65,
              //       width: 65,
              //       decoration: BoxDecoration(
              //         border: Border.all(
              //           color: MyColor.grey,
              //         ),
              //       ),
              //       child: Center(
              //         child: TextFormField(
              //           controller: otpController3,
              //           decoration: const InputDecoration(
              //             contentPadding: EdgeInsets.symmetric(
              //               horizontal: 20,
              //               vertical: 20,
              //             ),
              //             enabledBorder: OutlineInputBorder(
              //               borderSide: BorderSide(
              //                 color: MyColor.grey,
              //               ),
              //             ),
              //             focusedBorder: OutlineInputBorder(
              //               borderSide: BorderSide(
              //                 color: MyColor.grey,
              //               ),
              //             ),
              //             border: OutlineInputBorder(
              //               borderSide: BorderSide(
              //                 color: MyColor.grey,
              //               ),
              //             ),
              //           ),
              //           inputFormatters: [
              //             FilteringTextInputFormatter.digitsOnly,
              //             LengthLimitingTextInputFormatter(1),
              //           ],
              //           keyboardType: TextInputType.phone,
              //         ),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 10,
              //     ),
              //     Container(
              //       height: 65,
              //       width: 65,
              //       decoration: BoxDecoration(
              //         border: Border.all(
              //           color: MyColor.grey,
              //         ),
              //       ),
              //       child: Center(
              //         child: TextFormField(
              //           controller: otpController4,
              //           decoration: const InputDecoration(
              //             contentPadding: EdgeInsets.symmetric(
              //               horizontal: 20,
              //               vertical: 20,
              //             ),
              //             enabledBorder: OutlineInputBorder(
              //               borderSide: BorderSide(
              //                 color: MyColor.grey,
              //               ),
              //             ),
              //             focusedBorder: OutlineInputBorder(
              //               borderSide: BorderSide(
              //                 color: MyColor.grey,
              //               ),
              //             ),
              //             border: OutlineInputBorder(
              //               borderSide: BorderSide(
              //                 color: MyColor.grey,
              //               ),
              //             ),
              //           ),
              //           inputFormatters: [
              //             FilteringTextInputFormatter.digitsOnly,
              //             LengthLimitingTextInputFormatter(1),
              //           ],
              //           keyboardType: TextInputType.phone,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Enter 4 digit Login PIN or Use Fingerprint',
                style: MyStyle.tx12b,
              ),
              const SizedBox(
                height: 20,
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
              Text(
                'Unlock/Forgot Login PIN?',
                style: MyStyle.tx14b.copyWith(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins-Bold',
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, dashboardRoute);
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  color: MyColor.black,
                  child: const Center(
                    child: Text(
                      'CONTINUE',
                      style: MyStyle.tx20W,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
