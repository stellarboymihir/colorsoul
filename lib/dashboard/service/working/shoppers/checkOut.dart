import 'package:flutter/material.dart';

import '../../../../values/myColor.dart';
import '../../../../values/myStyle.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  List<bool> isClick = [false, false, false];
  TextEditingController reasonController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.white,
        leading: Container(
          height: 36,
          width: 36,
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.all(12),
          color: MyColor.grey,
          child: const Center(
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 16,
            ),
          ),
        ),
        title: const Text(
          'Check out',
          style: MyStyle.tx16b,
        ),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Title',
                style: MyStyle.tx14b.copyWith(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto-Medium',
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.grey,
                  ),
                ),
                child: ExpansionTile(
                  tilePadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  childrenPadding: const EdgeInsets.only(
                    left: 14,
                  ),
                  title: const Text(
                    'Title',
                    style: MyStyle.tx14b,
                  ),
                  trailing: const Icon(
                    Icons.arrow_drop_down_sharp,
                    size: 20,
                    color: MyColor.black,
                  ),
                  shape: Border.all(color: Colors.transparent),
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Closed',
                          style: MyStyle.tx14b.copyWith(
                            fontFamily: 'Roboto-Regular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            activeColor: MyColor.black,
                            value: isClick[0],
                            onChanged: (bool? val) {
                              setState(() {
                                isClick[0] = val!;
                              });
                            })
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Not Available',
                          style: MyStyle.tx14b.copyWith(
                            fontFamily: 'Roboto-Regular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            activeColor: MyColor.black,
                            value: isClick[1],
                            onChanged: (bool? val) {
                              setState(() {
                                isClick[1] = val!;
                              });
                            })
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Other',
                          style: MyStyle.tx14b.copyWith(
                            fontFamily: 'Roboto-Regular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            activeColor: MyColor.black,
                            value: isClick[2],
                            onChanged: (bool? val) {
                              setState(() {
                                isClick[2] = val!;
                              });
                            })
                      ],
                    ),
                  ],
                  onExpansionChanged: (bool expanded) {
                    setState(() {});
                  },
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    'Reason ',
                    style: MyStyle.tx14b.copyWith(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto-Medium',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: reasonController,
                  decoration: const InputDecoration(
                    // isDense: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 5,
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
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.fromLTRB(12, 0, 12, 20),
          color: MyColor.black,
          child: Center(
            child: Text(
              'Done',
              style: MyStyle.tx20W.copyWith(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
