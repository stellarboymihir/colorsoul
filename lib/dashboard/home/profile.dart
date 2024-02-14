import 'package:flutter/material.dart';

import '../../values/myColor.dart';
import '../../values/myStyle.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.white,
        leading: Container(
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
        title: const Text(
          'Profile',
          style: MyStyle.tx16b,
        ),
      ),
    );
  }
}
