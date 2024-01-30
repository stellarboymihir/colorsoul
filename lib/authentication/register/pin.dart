import 'package:colorsoul/values/myColor.dart';
import 'package:colorsoul/values/myStyle.dart';
import 'package:flutter/material.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class Pin extends StatefulWidget {
  const Pin({super.key});

  @override
  State<Pin> createState() => _PinState();
}

class _PinState extends State<Pin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Image.asset('assets/icons/logo.png'),
              ),
              const SizedBox(
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
              const SizedBox(
                height: 10,
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
              const SizedBox(
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
              const SizedBox(
                height: 10,
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
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(20.0),
                  color: MyColor.black,
                  child: const Center(
                    child: Text(
                      'Submit',
                      style: MyStyle.tx20W,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
