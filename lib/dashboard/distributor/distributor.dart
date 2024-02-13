import 'package:colorsoul/constants/routes.dart';
import 'package:colorsoul/dashboard/distributor/distributorList.dart';
import 'package:colorsoul/dashboard/distributor/retailerList.dart';
import 'package:flutter/material.dart';

import '../../values/myColor.dart';
import '../../values/myStyle.dart';

class Distributor extends StatefulWidget {
  const Distributor({super.key});

  @override
  State<Distributor> createState() => _DistributorState();
}

class _DistributorState extends State<Distributor> {
  TextEditingController searchController = TextEditingController();
  var onPressed = 'distributor';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        backgroundColor: MyColor.white,
        title: const Text(
          'Distributor/Retailer List',
          style: MyStyle.tx16b,
        ),
        actions: [
          Container(
            height: 36,
            width: 36,
            padding: const EdgeInsets.all(9),
            color: MyColor.grey,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, filterRoute);
              },
              child: Image.asset(
                'assets/icons/funnel.png',
                height: 25,
                width: 25,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            // SearchBar
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: MyStyle.tx14b,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: MyColor.grey,
                    ),
                    borderRadius: BorderRadius.circular(1),
                  ),
                  suffixIcon: const Icon(
                    Icons.search_outlined,
                    size: 16,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: MyColor.grey,
                    ),
                    borderRadius: BorderRadius.circular(1),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: MyColor.grey,
                    ),
                    borderRadius: BorderRadius.circular(1),
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        onPressed = 'distributor';
                      });
                      const DistributorList();
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      // margin: EdgeInsets.all(12),
                      color: onPressed == 'distributor'
                          ? MyColor.black
                          : MyColor.grey,
                      child: Center(
                        child: Text(
                          'Distributor',
                          style: onPressed == 'distributor'
                              ? MyStyle.tx14w.copyWith(
                                  fontSize: 12,
                                  fontFamily: 'Poppins-SemiBold',
                                  fontWeight: FontWeight.w700,
                                )
                              : MyStyle.tx14b.copyWith(
                                  fontSize: 12,
                                  fontFamily: 'Poppins-SemiBold',
                                  fontWeight: FontWeight.w700,
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        onPressed = 'retailer';
                      });
                      const RetailerList();
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      // margin: EdgeInsets.all(12),
                      color: onPressed == 'retailer'
                          ? MyColor.black
                          : MyColor.grey,
                      child: Center(
                        child: Text(
                          'Retailer',
                          style: onPressed == 'retailer'
                              ? MyStyle.tx14w.copyWith(
                                  fontSize: 14,
                                  fontFamily: 'Poppins-SemiBold',
                                  fontWeight: FontWeight.w700,
                                )
                              : MyStyle.tx14b.copyWith(
                                  fontSize: 14,
                                  fontFamily: 'Poppins-SemiBold',
                                  fontWeight: FontWeight.w700,
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
            onPressed == 'distributor'
                ? const Expanded(child: DistributorList())
                : const SizedBox(),
            onPressed == 'retailer'
                ? const Expanded(child: RetailerList())
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
