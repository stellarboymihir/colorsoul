import 'package:flutter/material.dart';

import '../../values/myColor.dart';
import '../../values/myStyle.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool status0 = false;
  bool status1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColor.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 36,
            width: 36,
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.all(15),
            color: MyColor.grey,
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 14,
              ),
            ),
          ),
        ),
        title: const Text(
          'Setting',
          style: MyStyle.tx16b,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  Notification
            const Text(
              'Notification',
              style: MyStyle.tx18b,
            ),
            const Divider(
              color: MyColor.grey,
            ),
            const Text(
              'App Notification',
              style: MyStyle.tx14b,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    'Email Notification',
                    style: MyStyle.tx14b,
                  ),
                ),
                Switch(
                  value: status0,
                  inactiveThumbColor: MyColor.black,
                  activeTrackColor: MyColor.green,
                  activeColor: MyColor.green,
                  inactiveTrackColor: MyColor.black,
                  thumbColor:
                      const MaterialStatePropertyAll<Color>(MyColor.white),
                  onChanged: (bool value) {
                    // This is called when the user toggles the switch.
                    setState(() {
                      status0 = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            //   Security
            const Text(
              'Security',
              style: MyStyle.tx18b,
            ),
            const Divider(
              color: MyColor.grey,
            ),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    'Enables biometric access',
                    style: MyStyle.tx14b,
                  ),
                ),
                Switch(
                  value: status1,
                  inactiveThumbColor: MyColor.black,
                  activeTrackColor: MyColor.green,
                  activeColor: MyColor.green,
                  inactiveTrackColor: MyColor.black,
                  thumbColor:
                      const MaterialStatePropertyAll<Color>(MyColor.white),
                  onChanged: (bool value) {
                    // This is called when the user toggles the switch.
                    setState(() {
                      status1 = value;
                    });
                  },
                ),
              ],
            ),
            const Text(
              'Change Password',
              style: MyStyle.tx14b,
            ),
            const SizedBox(
              height: 20,
            ),

            //  About
            const Text(
              'About',
              style: MyStyle.tx18b,
            ),
            const Divider(
              color: MyColor.grey,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Privacy  policy',
              style: MyStyle.tx14b,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Terms of Use',
              style: MyStyle.tx14b,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Helps',
              style: MyStyle.tx14b,
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          // Navigator.pushNamed(
          //   context,
          // );
          Navigator.pop(context);
        },
        child: InkWell(
          onTap: () {
            // Navigator.pushNamed(context, resetPassRoute);
            Navigator.pop(context);
          },
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: MyColor.black,
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Center(
              child: Text(
                'Log Out',
                style: MyStyle.tx20W
                    .copyWith(fontFamily: 'Poppins-SemiBold', fontSize: 15),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
