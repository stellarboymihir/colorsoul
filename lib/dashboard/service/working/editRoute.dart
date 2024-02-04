import 'package:flutter/material.dart';

import '../../../values/myColor.dart';
import '../../../values/myStyle.dart';

class EditRoute extends StatefulWidget {
  const EditRoute({super.key});

  @override
  State<EditRoute> createState() => _EditRouteState();
}

class _EditRouteState extends State<EditRoute> {
  bool onClick = false;

  TextEditingController searchController = TextEditingController();
  final List<Map<String, dynamic>> list = [
    {
      "title": 'GK Shoppers Stor',
      "Time": '9:30 AM ',
    },
    {
      "title": 'GK Shoppers Stor',
      "Time": '9:30 AM ',
    },
    {
      "title": 'GK Shoppers Stor',
      "Time": '9:30 AM ',
    },
    {
      "title": 'GK Shoppers Stor',
      "Time": '9:30 AM ',
    },
    {
      "title": 'GK Shoppers Stor',
      "Time": '9:30 AM ',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.white,
        leading: Container(
          height: 40,
          width: 40,
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.all(12),
          color: MyColor.grey,
          child: const Center(
              child: Icon(
            Icons.arrow_back_ios_new,
            size: 16,
          )),
        ),
        title: const Text(
          'Edit route',
          style: MyStyle.tx16b,
        ),
        actions: [
          InkWell(
            onTap: () {
              // Navigator.pushNamed(context, editRoute);
            },
            child: Container(
              height: 40,
              width: 40,
              color: MyColor.grey,
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                'assets/icons/funnel.png',
                height: 25,
                width: 25,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: searchController,
                  decoration: const InputDecoration(
                    hintText: 'Search',
                    hintStyle: MyStyle.tx14b,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: MyColor.grey,
                      ),
                    ),
                    suffixIcon: Icon(
                      Icons.search_outlined,
                      size: 20,
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
                  keyboardType: TextInputType.text,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: list.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return StatefulBuilder(builder: (context, setState) {
                    return Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(12.0),
                      margin: const EdgeInsets.symmetric(
                        vertical: 8.0,
                      ),
                      color: MyColor.grey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'GK Shoppers Store',
                                style: MyStyle.tx18b,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '18, Dec 2021',
                                    style: MyStyle.tx12b.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '9:30 AM',
                                    style: MyStyle.tx12b.copyWith(
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 25,
                              width: 25,
                              child: Image.asset(
                                'assets/icons/delete.png',
                                height: 25,
                                width: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  });
                },
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                color: MyColor.black,
                child: const Center(
                  child: Text(
                    'Add New Route',
                    style: MyStyle.tx20W,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                color: MyColor.black,
                child: const Center(
                  child: Text(
                    'Submit',
                    style: MyStyle.tx20W,
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
