import 'package:flutter/material.dart';

import '../../values/myColor.dart';
import '../../values/myStyle.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
          children: [
            Text(
              'Notification',
              style: MyStyle.tx18b,
            )
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
