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
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 36,
            width: 36,
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            color: MyColor.grey,
            child: const Center(
                child: Icon(
              Icons.arrow_back_ios_new,
              size: 16,
            )),
          ),
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
              height: 36,
              width: 36,
              color: MyColor.grey,
              child: Center(
                child: Image.asset(
                  'assets/icons/funnel.png',
                  height: 16,
                  width: 16,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: searchController,
                  decoration: const InputDecoration(
                    hintText: 'Search',
                    hintStyle: MyStyle.tx14b,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: MyColor.grey,
                      ),
                    ),
                    suffixIcon: Icon(
                      Icons.search_outlined,
                      size: 18,
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
                              Text(
                                'GK Shoppers Store',
                                style: MyStyle.tx18b.copyWith(fontSize: 17),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '18, Dec 2021',
                                    style: MyStyle.tx12b.copyWith(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    '9:30 AM',
                                    style: MyStyle.tx12b.copyWith(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {},
                            child: Image.asset(
                              'assets/icons/delete.png',
                              height: 20,
                              width: 20,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    );
                  });
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.fromLTRB(12, 0, 12, 10),
            color: MyColor.black,
            child: Center(
              child: Text(
                'Add New Route',
                style: MyStyle.tx20W.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.fromLTRB(12, 0, 12, 20),
            color: MyColor.black,
            child: Center(
              child: Text(
                'Submit',
                style: MyStyle.tx20W.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
