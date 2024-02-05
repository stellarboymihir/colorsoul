import 'package:colorsoul/constants/routes.dart';
import 'package:colorsoul/values/myColor.dart';
import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController mobController = TextEditingController();
  TextEditingController passController = TextEditingController();

  bool isCheck = false;

  bool _isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            Image.asset(
              'assets/icons/colorsol.png',
              height: 44,
              width: 200,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    'Sign In',
                    textAlign: TextAlign.start,
                    style: MyStyle.tx32b.copyWith(
                      fontFamily: 'Poppins-SemiBold',
                      fontSize: 23,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 30.0,
                  ),
                  child: Text(
                    'Mobile No.',
                    style: MyStyle.tx14b.copyWith(
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                controller: mobController,
                style: MyStyle.tx14b,
                decoration: InputDecoration(
                  prefixIcon: Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(
                      color: MyColor.grey,
                    ))),
                    child: Text(
                      '+91',
                      textAlign: TextAlign.center,
                      style: MyStyle.tx20b.copyWith(
                        fontSize: 14,
                        fontFamily: 'Poppins-SemiBold',
                      ),
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    // vertical: 20,
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
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10),
                ],
                keyboardType: TextInputType.phone,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text(
                    'Password',
                    style: MyStyle.tx14b,
                  ),
                ),
              ],
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                controller: passController,
                style: MyStyle.tx14b,
                decoration: InputDecoration(
                  isDense: true,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    icon: Icon(_isObscure
                        ? Icons.visibility_off_sharp
                        : Icons.visibility_sharp),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    // vertical: 20,
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
                obscureText: _isObscure,
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  // Navigator.pushNamed(context, forgotPassRoute);
                  setState(() {
                    isCheck = !isCheck;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isCheck
                        ? const Icon(
                            Icons.check_box,
                            color: MyColor.black,
                          )
                        : const Icon(
                            Icons.check_box_outline_blank,
                            color: MyColor.black,
                          ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Enables biometric access to Login',
                      textAlign: TextAlign.center,
                      style: MyStyle.tx14b.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins-SemiBold',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, forgotPassRoute);
                },
                child: Text(
                  'Forgot password?',
                  textAlign: TextAlign.center,
                  style: MyStyle.tx14b.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins-SemiBold',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, otpVerifyRoute);
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                color: MyColor.grey,
                child: Center(
                  child: Text(
                    'GET OTP',
                    style: MyStyle.tx20b
                        .copyWith(fontFamily: 'Poppins-SemiBold', fontSize: 15),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, welcomeRoute);
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                color: MyColor.black,
                child: Center(
                  child: Text(
                    'SIGN IN',
                    style: MyStyle.tx20W
                        .copyWith(fontFamily: 'Poppins-SemiBold', fontSize: 15),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
