import 'package:colorsoul/values/myColor.dart';
import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/material.dart';

class Pin extends StatefulWidget {
  const Pin({super.key});

  @override
  State<Pin> createState() => _PinState();
}

class _PinState extends State<Pin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70.0),
            child: Image.asset('assets/icons/logo.png'),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Generate PIN',
            style: MyStyle.tx40b
                .copyWith(fontFamily: 'Poppins-Bold', fontSize: 34),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: Text(
                  'Enter 4 digit Login PIN ',
                  textAlign: TextAlign.start,
                  style: MyStyle.tx12b,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: Text(
                  'Confirm 4 digit Login PIN',
                  textAlign: TextAlign.start,
                  style: MyStyle.tx12b,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(20.0),
            color: MyColor.black,
            child: Center(
              child: Text(
                'Submit',
                style: MyStyle.tx20W,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
