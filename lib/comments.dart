// //      State
// Row(
//   children: [
//     // State
//     Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'State',
//           style: MyStyle.tx14b.copyWith(
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//         Container(
//           // height: 55,
//           // height: 55,
//           width: 165,
//           margin: const EdgeInsets.symmetric(vertical: 12),
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: MyColor.grey,
//             ),
//           ),
//           child: Theme(
//             data: Theme.of(context).copyWith(
//               dividerColor: Colors.transparent,
//             ),
//             child: ExpansionTile(
//               title: const Text(
//                 '',
//                 style: MyStyle.tx14b,
//               ),
//               trailing: const Icon(
//                 // _customTileExpanded
//                 //     ? Icons.arrow_drop_down_circle
//                 //     : Icons.arrow_drop_down,
//                 Icons.arrow_drop_down_sharp,
//                 color: MyColor.black,
//               ),
//               shape: Border.all(color: MyColor.grey),
//               children: <Widget>[
//                 ListTile(
//                   title: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       // Text(
//                       //     // // 'Personal Vehicle',
//                       //     // style: MyStyle.tx14b.copyWith(
//                       //     //   fontFamily: 'Roboto-Med',
//                       //     //   fontWeight: FontWeight.w400,
//                       //     // ),
//                       //     ),
//                       Checkbox(
//                           activeColor: MyColor.black,
//                           value: _isSelected[0],
//                           onChanged: (bool? val) {
//                             setState(() {
//                               _isSelected[0] = val!;
//                             });
//                           })
//                     ],
//                   ),
//                 ),
//                 ListTile(
//                   title: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       // Text(
//                       //     // // 'Public Transport',
//                       //     // style: MyStyle.tx14b.copyWith(
//                       //     //   fontFamily: 'Roboto-Med',
//                       //     //   fontWeight: FontWeight.w400,
//                       //     // ),
//                       //     ),
//                       Checkbox(
//                           activeColor: MyColor.black,
//                           value: _isSelected[1],
//                           onChanged: (bool? val) {
//                             setState(() {
//                               _isSelected[1] = val!;
//                             });
//                           })
//                     ],
//                   ),
//                 ),
//               ],
//               onExpansionChanged: (bool expanded) {
//                 setState(() {});
//               },
//             ),
//           ),
//         ),
//       ],
//     ),
//     SizedBox(
//       width: 5,
//     ),
//     Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // City
//         Text(
//           'City',
//           style: MyStyle.tx14b.copyWith(
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//         Container(
//           // height: 55,
//           // height: 55,
//           width: 165,
//           margin: const EdgeInsets.symmetric(vertical: 12),
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: MyColor.grey,
//             ),
//           ),
//           child: Theme(
//             data: Theme.of(context).copyWith(
//               dividerColor: Colors.transparent,
//             ),
//             child: ExpansionTile(
//               title: const Text(
//                 '',
//                 style: MyStyle.tx14b,
//               ),
//               trailing: const Icon(
//                 // _customTileExpanded
//                 //     ? Icons.arrow_drop_down_circle
//                 //     : Icons.arrow_drop_down,
//                 Icons.arrow_drop_down_sharp,
//                 color: MyColor.black,
//               ),
//               shape: Border.all(color: MyColor.grey),
//               children: <Widget>[
//                 ListTile(
//                   title: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       // Text(
//                       //     // // 'Personal Vehicle',
//                       //     // style: MyStyle.tx14b.copyWith(
//                       //     //   fontFamily: 'Roboto-Med',
//                       //     //   fontWeight: FontWeight.w400,
//                       //     // ),
//                       //     ),
//                       Checkbox(
//                           activeColor: MyColor.black,
//                           value: _isSelected[0],
//                           onChanged: (bool? val) {
//                             setState(() {
//                               _isSelected[0] = val!;
//                             });
//                           })
//                     ],
//                   ),
//                 ),
//                 ListTile(
//                   title: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       // Text(
//                       //     // // 'Public Transport',
//                       //     // style: MyStyle.tx14b.copyWith(
//                       //     //   fontFamily: 'Roboto-Med',
//                       //     //   fontWeight: FontWeight.w400,
//                       //     // ),
//                       //     ),
//                       Checkbox(
//                           activeColor: MyColor.black,
//                           value: _isSelected[1],
//                           onChanged: (bool? val) {
//                             setState(() {
//                               _isSelected[1] = val!;
//                             });
//                           })
//                     ],
//                   ),
//                 ),
//               ],
//               onExpansionChanged: (bool expanded) {
//                 setState(() {});
//               },
//             ),
//           ),
//         ),
//       ],
//     ),
//   ],
// ),
//
// //  Region
// Row(
//   children: [
//     // State
//     Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Region',
//           style: MyStyle.tx14b.copyWith(
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//         Container(
//           // height: 55,
//           // height: 55,
//           width: 165,
//           margin: const EdgeInsets.symmetric(vertical: 12),
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: MyColor.grey,
//             ),
//           ),
//           child: Theme(
//             data: Theme.of(context).copyWith(
//               dividerColor: Colors.transparent,
//             ),
//             child: ExpansionTile(
//               title: const Text(
//                 '',
//                 style: MyStyle.tx14b,
//               ),
//               trailing: const Icon(
//                 // _customTileExpanded
//                 //     ? Icons.arrow_drop_down_circle
//                 //     : Icons.arrow_drop_down,
//                 Icons.arrow_drop_down_sharp,
//                 color: MyColor.black,
//               ),
//               shape: Border.all(color: MyColor.grey),
//               children: <Widget>[
//                 ListTile(
//                   title: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       // Text(
//                       //     // // 'Personal Vehicle',
//                       //     // style: MyStyle.tx14b.copyWith(
//                       //     //   fontFamily: 'Roboto-Med',
//                       //     //   fontWeight: FontWeight.w400,
//                       //     // ),
//                       //     ),
//                       Checkbox(
//                           activeColor: MyColor.black,
//                           value: _isSelected[0],
//                           onChanged: (bool? val) {
//                             setState(() {
//                               _isSelected[0] = val!;
//                             });
//                           })
//                     ],
//                   ),
//                 ),
//                 ListTile(
//                   title: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       // Text(
//                       //     // // 'Public Transport',
//                       //     // style: MyStyle.tx14b.copyWith(
//                       //     //   fontFamily: 'Roboto-Med',
//                       //     //   fontWeight: FontWeight.w400,
//                       //     // ),
//                       //     ),
//                       Checkbox(
//                           activeColor: MyColor.black,
//                           value: _isSelected[1],
//                           onChanged: (bool? val) {
//                             setState(() {
//                               _isSelected[1] = val!;
//                             });
//                           })
//                     ],
//                   ),
//                 ),
//               ],
//               onExpansionChanged: (bool expanded) {
//                 setState(() {});
//               },
//             ),
//           ),
//         ),
//       ],
//     ),
//     SizedBox(
//       width: 5,
//     ),
//     Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // City
//         Text(
//           'Area',
//           style: MyStyle.tx14b.copyWith(
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//         Container(
//           // height: 55,
//           // height: 55,
//           width: 165,
//           margin: const EdgeInsets.symmetric(vertical: 12),
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: MyColor.grey,
//             ),
//           ),
//           child: Theme(
//             data: Theme.of(context).copyWith(
//               dividerColor: Colors.transparent,
//             ),
//             child: ExpansionTile(
//               title: const Text(
//                 '',
//                 style: MyStyle.tx14b,
//               ),
//               trailing: const Icon(
//                 // _customTileExpanded
//                 //     ? Icons.arrow_drop_down_circle
//                 //     : Icons.arrow_drop_down,
//                 Icons.arrow_drop_down_sharp,
//                 color: MyColor.black,
//               ),
//               shape: Border.all(color: MyColor.grey),
//               children: <Widget>[
//                 ListTile(
//                   title: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       // Text(
//                       //     // // 'Personal Vehicle',
//                       //     // style: MyStyle.tx14b.copyWith(
//                       //     //   fontFamily: 'Roboto-Med',
//                       //     //   fontWeight: FontWeight.w400,
//                       //     // ),
//                       //     ),
//                       Checkbox(
//                           activeColor: MyColor.black,
//                           value: _isSelected[0],
//                           onChanged: (bool? val) {
//                             setState(() {
//                               _isSelected[0] = val!;
//                             });
//                           })
//                     ],
//                   ),
//                 ),
//                 ListTile(
//                   title: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       // Text(
//                       //     // // 'Public Transport',
//                       //     // style: MyStyle.tx14b.copyWith(
//                       //     //   fontFamily: 'Roboto-Med',
//                       //     //   fontWeight: FontWeight.w400,
//                       //     // ),
//                       //     ),
//                       Checkbox(
//                           activeColor: MyColor.black,
//                           value: _isSelected[1],
//                           onChanged: (bool? val) {
//                             setState(() {
//                               _isSelected[1] = val!;
//                             });
//                           })
//                     ],
//                   ),
//                 ),
//               ],
//               onExpansionChanged: (bool expanded) {
//                 setState(() {});
//               },
//             ),
//           ),
//         ),
//       ],
//     ),
//   ],
// ),
// Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     Container(
//       height: 65,
//       width: 65,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: MyColor.grey,
//         ),
//       ),
//       child: Center(
//         child: TextFormField(
//           controller: otpController1,
//           decoration: const InputDecoration(
//             contentPadding: EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 20,
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: MyColor.grey,
//               ),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: MyColor.grey,
//               ),
//             ),
//             border: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: MyColor.grey,
//               ),
//             ),
//           ),
//           inputFormatters: [
//             FilteringTextInputFormatter.digitsOnly,
//             LengthLimitingTextInputFormatter(1),
//           ],
//           keyboardType: TextInputType.phone,
//         ),
//       ),
//     ),
//     const SizedBox(
//       width: 10,
//     ),
//     Container(
//       height: 65,
//       width: 65,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: MyColor.grey,
//         ),
//       ),
//       child: Center(
//         child: TextFormField(
//           controller: otpController2,
//           decoration: const InputDecoration(
//             contentPadding: EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 20,
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: MyColor.grey,
//               ),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: MyColor.grey,
//               ),
//             ),
//             border: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: MyColor.grey,
//               ),
//             ),
//           ),
//           inputFormatters: [
//             FilteringTextInputFormatter.digitsOnly,
//             LengthLimitingTextInputFormatter(1),
//           ],
//           keyboardType: TextInputType.phone,
//         ),
//       ),
//     ),
//     const SizedBox(
//       width: 10,
//     ),
//     Container(
//       height: 65,
//       width: 65,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: MyColor.grey,
//         ),
//       ),
//       child: Center(
//         child: TextFormField(
//           controller: otpController3,
//           decoration: const InputDecoration(
//             contentPadding: EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 20,
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: MyColor.grey,
//               ),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: MyColor.grey,
//               ),
//             ),
//             border: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: MyColor.grey,
//               ),
//             ),
//           ),
//           inputFormatters: [
//             FilteringTextInputFormatter.digitsOnly,
//             LengthLimitingTextInputFormatter(1),
//           ],
//           keyboardType: TextInputType.phone,
//         ),
//       ),
//     ),
//     const SizedBox(
//       width: 10,
//     ),
//     Container(
//       height: 65,
//       width: 65,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: MyColor.grey,
//         ),
//       ),
//       child: Center(
//         child: TextFormField(
//           controller: otpController4,
//           decoration: const InputDecoration(
//             contentPadding: EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 20,
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: MyColor.grey,
//               ),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: MyColor.grey,
//               ),
//             ),
//             border: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: MyColor.grey,
//               ),
//             ),
//           ),
//           inputFormatters: [
//             FilteringTextInputFormatter.digitsOnly,
//             LengthLimitingTextInputFormatter(1),
//           ],
//           keyboardType: TextInputType.phone,
//         ),
//       ),
//     ),
//   ],
// ),

// onSubmit: (pin) {
//   // Handle the submitted PIN
//   if (pin.length == 1) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text('Pin: $pin'),
//       ),
//     );
//   } else {
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(
//         content: Text('Invalid Pin'),
//       ),
//     );
//   }
// },

// onSubmit: (pin) {
//   // Handle the submitted PIN
//   if (pin.length == 1) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text('Pin: $pin'),
//       ),
//     );
//   } else {
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(
//         content: Text('Invalid Pin'),
//       ),
//     );
//   }
// },
// Container(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// '${list[index]["title"]}',
// style: MyStyle.tx14b.copyWith(
// fontWeight: FontWeight.w700,
// fontFamily: 'NotoSansKR-SemiBold',
// ),
// ),
// Text(
// '${list[index]["Time"]}',
// style: MyStyle.tx14b.copyWith(
// fontWeight: FontWeight.w500,
// fontFamily: 'NotoSansKR-Medium',
// ),
// ),
// ],
// ),
// );

// bottomNavigationBar: BottomNavigationBar(
//   onTap: (value) {
//     setState(() {
//       currIndex = value;
//     });
//   },
//   // backgroundColor: MyColor.black,
//   type: BottomNavigationBarType.fixed,
//   backgroundColor: MyColor.black,
//   selectedItemColor: MyColor.black,
//   unselectedItemColor: MyColor.white,
//   currentIndex: currIndex,
//   items: [
//     // Home
//     BottomNavigationBarItem(
//       label: 'Home',
//       icon: Image.asset(
//         'assets/icons/home.png',
//         height: 25,
//         width: 23,
//       ),
//       activeIcon: Image.asset(
//         'assets/icons/homeo.png',
//         height: 25,
//         width: 23,
//       ),
//     ),
//
//     // Service
//     BottomNavigationBarItem(
//       label: 'Service',
//       icon: Image.asset(
//         'assets/icons/serviceo.png',
//         height: 25,
//         width: 23,
//       ),
//       activeIcon: Image.asset(
//         'assets/icons/service.png',
//         height: 25,
//         width: 23,
//       ),
//     ),
//
//     // Distributor
//     // BottomNavigationBarItem(
//     //   label: 'Service',
//     //   icon: Image.asset(
//     //     'assets/icons/distributor.png',
//     //     height: 25,
//     //     width: 23,
//     //   ),
//     //   activeIcon: Image.asset(
//     //     'assets/icons/distributoro.png',
//     //     height: 25,
//     //     width: 23,
//     //   ),
//     // ),
//     //
//     // // Reimbursement
//     // BottomNavigationBarItem(
//     //   label: 'reimbursement',
//     //   icon: Image.asset(
//     //     'assets/icons/service.png',
//     //     height: 25,
//     //     width: 23,
//     //   ),
//     //   activeIcon: Image.asset(
//     //     'assets/icons/reimbursemento.png',
//     //     height: 25,
//     //     width: 23,
//     //   ),
//     // ),
//   ],
// ),

// Column(
//   children: [
//     Row(
//       children: [
//         InkWell(
//           onTap: () {
//             setState(() {
//               onClick[1] = !onClick[1];
//             });
//           },
//           child: Container(
//             width: 32,
//             height: 56,
//             margin: const EdgeInsets.only(
//                 left: 12, top: 10, bottom: 10, right: 4),
//             color: MyColor.grey,
//             child: onClick[1]
//                 ? const Icon(Icons.arrow_drop_up)
//                 : const Icon(Icons.arrow_drop_down),
//           ),
//         ),
//         Expanded(
//           child: Container(
//             height: 56,
//             // Use double.infinity to make the container take the maximum possible width
//             width: MediaQuery.of(context).size.width,
//             color: MyColor.grey,
//             padding: const EdgeInsets.symmetric(horizontal: 12),
//             // margin: const EdgeInsets.symmetric(horizontal: 12),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Glam',
//                   style: MyStyle.tx14b.copyWith(
//                       // fontWeight: FontWeight.w400,
//                       fontFamily: 'Roboto-Medium',
//                       fontSize: 16),
//                 ),
//                 Text(
//                   'Total Stock: 100',
//                   style: MyStyle.tx10b.copyWith(
//                     fontSize: 12,
//                     fontFamily: 'Roboto-Regular',
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Container(
//             width: 90,
//             height: 56,
//             margin: const EdgeInsets.symmetric(horizontal: 12),
//             decoration: BoxDecoration(
//               border: Border.all(
//                 color: MyColor.grey,
//               ),
//             ),
//             child: const Center(
//               child: Text('40'),
//             )),
//       ],
//     ),
//     onClick[1]
//         ? const SizedBox()
//         : ListView.builder(
//             scrollDirection: Axis.vertical,
//             itemCount: 5,
//             shrinkWrap: true,
//             itemBuilder: (context, index) {
//               return Container(
//                 height: 50,
//                 margin: const EdgeInsets.symmetric(
//                     horizontal: 12, vertical: 1),
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 width: MediaQuery.of(context).size.width,
//                 color: MyColor.grey,
//                 child: Row(
//                   children: [
//                     Text(
//                       'Glam 01',
//                       style: MyStyle.tx14b.copyWith(
//                         fontFamily: 'Roboto-Medium',
//                       ),
//                     ),
//                     const Spacer(),
//                     Text(
//                       '05',
//                       style: MyStyle.tx14b.copyWith(
//                         fontFamily: 'Roboto-Regular',
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//   ],
// ),
// Column(
//   children: [
//     Row(
//       children: [
//         InkWell(
//           onTap: () {
//             setState(() {
//               onClick[2] = !onClick[2];
//             });
//           },
//           child: Container(
//             width: 32,
//             height: 56,
//             margin: const EdgeInsets.only(
//                 left: 12, top: 10, bottom: 10, right: 4),
//             color: MyColor.grey,
//             child: onClick[2]
//                 ? const Icon(Icons.arrow_drop_up)
//                 : const Icon(Icons.arrow_drop_down),
//           ),
//         ),
//         Expanded(
//           child: Container(
//             height: 56,
//             // Use double.infinity to make the container take the maximum possible width
//             width: MediaQuery.of(context).size.width,
//             color: MyColor.grey,
//             padding: const EdgeInsets.symmetric(horizontal: 12),
//             // margin: const EdgeInsets.symmetric(horizontal: 12),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Glam',
//                   style: MyStyle.tx14b.copyWith(
//                       // fontWeight: FontWeight.w400,
//                       fontFamily: 'Roboto-Medium',
//                       fontSize: 16),
//                 ),
//                 Text(
//                   'Total Stock: 100',
//                   style: MyStyle.tx10b.copyWith(
//                     fontSize: 12,
//                     fontFamily: 'Roboto-Regular',
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Container(
//             width: 90,
//             height: 56,
//             margin: const EdgeInsets.symmetric(horizontal: 12),
//             decoration: BoxDecoration(
//               border: Border.all(
//                 color: MyColor.grey,
//               ),
//             ),
//             child: const Center(
//               child: Text('40'),
//             )),
//       ],
//     ),
//     onClick[2]
//         ? const SizedBox()
//         : ListView.builder(
//             scrollDirection: Axis.vertical,
//             itemCount: 5,
//             shrinkWrap: true,
//             itemBuilder: (context, index) {
//               return Container(
//                 height: 50,
//                 margin: const EdgeInsets.symmetric(
//                     horizontal: 12, vertical: 1),
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 width: MediaQuery.of(context).size.width,
//                 color: MyColor.grey,
//                 child: Row(
//                   children: [
//                     Text(
//                       'Glam 01',
//                       style: MyStyle.tx14b.copyWith(
//                         fontFamily: 'Roboto-Medium',
//                       ),
//                     ),
//                     const Spacer(),
//                     Text(
//                       '05',
//                       style: MyStyle.tx14b.copyWith(
//                         fontFamily: 'Roboto-Regular',
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//   ],
// ),
// Column(
//   children: [
//     Row(
//       children: [
//         InkWell(
//           onTap: () {
//             setState(() {
//               onClick[3] = !onClick[3];
//             });
//           },
//           child: Container(
//             width: 32,
//             height: 56,
//             margin: const EdgeInsets.only(
//                 left: 12, top: 10, bottom: 10, right: 4),
//             color: MyColor.grey,
//             child: onClick[3]
//                 ? const Icon(Icons.arrow_drop_up)
//                 : const Icon(Icons.arrow_drop_down),
//           ),
//         ),
//         Expanded(
//           child: Container(
//             height: 56,
//             // Use double.infinity to make the container take the maximum possible width
//             width: MediaQuery.of(context).size.width,
//             color: MyColor.grey,
//             padding: const EdgeInsets.symmetric(horizontal: 12),
//             // margin: const EdgeInsets.symmetric(horizontal: 12),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Glam',
//                   style: MyStyle.tx14b.copyWith(
//                       // fontWeight: FontWeight.w400,
//                       fontFamily: 'Roboto-Medium',
//                       fontSize: 16),
//                 ),
//                 Text(
//                   'Total Stock: 100',
//                   style: MyStyle.tx10b.copyWith(
//                     fontSize: 12,
//                     fontFamily: 'Roboto-Regular',
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Container(
//             width: 90,
//             height: 56,
//             margin: const EdgeInsets.symmetric(horizontal: 12),
//             decoration: BoxDecoration(
//               border: Border.all(
//                 color: MyColor.grey,
//               ),
//             ),
//             child: const Center(
//               child: Text('40'),
//             )),
//       ],
//     ),
//     onClick[3]
//         ? const SizedBox()
//         : ListView.builder(
//             scrollDirection: Axis.vertical,
//             itemCount: 5,
//             shrinkWrap: true,
//             itemBuilder: (context, index) {
//               return Container(
//                 height: 50,
//                 margin: const EdgeInsets.symmetric(
//                     horizontal: 12, vertical: 1),
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 width: MediaQuery.of(context).size.width,
//                 color: MyColor.grey,
//                 child: Row(
//                   children: [
//                     Text(
//                       'Glam 01',
//                       style: MyStyle.tx14b.copyWith(
//                         fontFamily: 'Roboto-Medium',
//                       ),
//                     ),
//                     const Spacer(),
//                     Text(
//                       '05',
//                       style: MyStyle.tx14b.copyWith(
//                         fontFamily: 'Roboto-Regular',
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//   ],
// ),

import 'dart:convert';

import 'package:colorsoul/values/myColor.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../utils.dart';

To parse this JSON data, do

    final colorSoulLogin = colorSoulLoginFromJson(jsonString);

import 'dart:convert';

ColorSoulLogin colorSoulLoginFromJson(String str) =>
    ColorSoulLogin.fromJson(json.decode(str));

String colorSoulLoginToJson(ColorSoulLogin data) => json.encode(data.toJson());

class ColorSoulLogin {
  String username;
  String password;
  String deviceId;

  ColorSoulLogin({
    required this.username,
    required this.password,
    required this.deviceId,
  });

  factory ColorSoulLogin.fromJson(Map<String, dynamic> json) => ColorSoulLogin(
        username: json["username"],
        password: json["password"],
        deviceId: json["device_id"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
        "device_id": deviceId,
      };
}

class Api_Handler extends StatefulWidget {
  const Api_Handler({super.key});

  @override
  State<Api_Handler> createState() => _Api_HandlerState();
}

class _Api_HandlerState extends State<Api_Handler> {
  // final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<ColorSoulLogin> colorSoulLogin;
  @override
  void initState() {
    super.initState();
    colorSoulLogin = fetchLoginDetail();
  }

  Future<ColorSoulLogin> fetchLoginDetail() async {
    String baseUrl = "http://68.183.81.169/admin/Api";
    String loginUrl = "$baseUrl/login";
    final response = await http.get(Uri.parse(loginUrl));

    if (response.statusCode == 200) {
      print(response.body);
      return ColorSoulLogin.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load Login Details');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<ColorSoulLogin>(
          future: colorSoulLogin,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.username);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

// class Api_Handler {
//   static Future<dynamic> postNormal(body, url) async {
//     _setHeadersPost() => {
//       'Content-type': 'application/json',
//       'Accept': 'application/json',
//       'Authorization': '4ccda7514adc0f13595a585205fb9761',
//       // 'App-Version': Utils.currentVersionId
//     };
//
//     var baseUrl = Uri.http(Utils.FinalLiveUrl,'${Utils.LiveUrl}$url');
//
//     http.Response response =
//     await http.post(Utils.FinalLiveUrl, '${Utils.LiveUrl}$url');
//
//     http.Response response = await http.post(baseUrl,
//         headers: _setHeadersPost(), body: jsonDecode(body));
//     print(jsonEncode(body));
//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       switch (response.statusCode) {
//         case 400:
//           return Fluttertoast.showToast(
//             msg: "Bad Response Format",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM,
//             timeInSecForIosWeb: 1,
//             backgroundColor: MyColor.red,
//             textColor: MyColor.white,
//             fontSize: 16,
//           );
//
//         case 401:
//           return Fluttertoast.showToast(
//             msg: "Unauthorized User",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM,
//             timeInSecForIosWeb: 1,
//             backgroundColor: MyColor.red,
//             textColor: MyColor.white,
//             fontSize: 16,
//           );
//
//         case 404:
//           return Fluttertoast.showToast(
//             msg: "Resource Not Found",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM,
//             timeInSecForIosWeb: 1,
//             backgroundColor: MyColor.red,
//             textColor: MyColor.white,
//             fontSize: 16,
//           );
//
//         case 500:
//           return Fluttertoast.showToast(
//             msg: "Internal Server Error",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM,
//             timeInSecForIosWeb: 1,
//             backgroundColor: MyColor.red,
//             textColor: MyColor.white,
//             fontSize: 16,
//           );
//         default:
//           return Fluttertoast.showToast(
//             msg: "Unknown Error",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM,
//             timeInSecForIosWeb: 1,
//             backgroundColor: MyColor.red,
//             textColor: MyColor.white,
//             fontSize: 16,
//           );
//       }
//     }
//   },
//   static Future<dynamic> post(body, url) async {
//     SharedPreferences sharedPreferences =  await SharedPreferences.getInstance();
//     var deviceId = sharedPreferences.getString("deviceId");
//     var userId = sharedPreferences.getString("userId");
//     _setHeadersPost() => {
//       'Content-type': 'application/json',
//       'Accept': 'application/json',
//       'Authorization': '4ccda7514adc0f13595a585205fb9761',
//       'User-Id': '$userId',
//       'Device-Id':'$deviceId',
//       'App-Version': Utils.currentVersionId
//     };
//
//     var baseUrl = Uri.http(Utils.FinalLiveUrl,'${Utils.LiveUrl}$url');
//     http.Response response =
//     await http.post(Utils.FinalLiveUrl, '${Utils.LiveUrl}$url');
//
//     http.Response response = await http.post(baseUrl,
//         headers: _setHeadersPost(), body: jsonDecode(body));
//     print(jsonEncode(body));
//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       switch (response.statusCode) {
//         case 400:
//           return Fluttertoast.showToast(
//             msg: "Bad Response Format",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM,
//             timeInSecForIosWeb: 1,
//             backgroundColor: MyColor.red,
//             textColor: MyColor.white,
//             fontSize: 16,
//           );
//
//         case 401:
//           return Fluttertoast.showToast(
//             msg: "Unauthorized User",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM,
//             timeInSecForIosWeb: 1,
//             backgroundColor: MyColor.red,
//             textColor: MyColor.white,
//             fontSize: 16,
//           );
//
//         case 404:
//           return Fluttertoast.showToast(
//             msg: "Resource Not Found",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM,
//             timeInSecForIosWeb: 1,
//             backgroundColor: MyColor.red,
//             textColor: MyColor.white,
//             fontSize: 16,
//           );
//
//         case 500:
//           return Fluttertoast.showToast(
//             msg: "Internal Server Error",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM,
//             timeInSecForIosWeb: 1,
//             backgroundColor: MyColor.red,
//             textColor: MyColor.white,
//             fontSize: 16,
//           );
//         default:
//           return Fluttertoast.showToast(
//             msg: "Unknown Error",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM,
//             timeInSecForIosWeb: 1,
//             backgroundColor: MyColor.red,
//             textColor: MyColor.white,
//             fontSize: 16,
//           );
//       }
//     }
//   }
//   static Future<dynamic> post1(body, url) async {
//     SharedPreferences sharedPreferences =  await SharedPreferences.getInstance();
//     var deviceId = sharedPreferences.getString("deviceId");
//     var userId = sharedPreferences.getString("userId");
//     _setHeadersPost() => {
//       'Content-type': 'application/json',
//       'Accept': 'application/json',
//       'Authorization': '4ccda7514adc0f13595a585205fb9761',
//       'User-Id': '$userId',
//       'Device-Id':'$deviceId',
//       // 'App-Version': Utils.currentVersionId
//     };
//
//     var baseUrl = Uri.http(Utils.FinalLiveUrl,'${Utils.LiveUrl}$url');
//
//     // http.Response response =
//     //     await http.post(Utils.FinalLiveUrl, '${Utils.LiveUrl}$url');
//
//     http.Response response = await http.post(baseUrl,
//       headers: _setHeadersPost(), body: jsonDecode(body),);
//
//     print(jsonEncode(body));
//
//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       switch (response.statusCode) {
//         case 400:
//           return Fluttertoast.showToast(
//             msg: "Bad Response Format",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM,
//             timeInSecForIosWeb: 1,
//             backgroundColor: MyColor.red,
//             textColor: MyColor.white,
//             fontSize: 16,
//           );
//
//         case 401:
//           return Fluttertoast.showToast(
//             msg: "Unauthorized User",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM,
//             timeInSecForIosWeb: 1,
//             backgroundColor: MyColor.red,
//             textColor: MyColor.white,
//             fontSize: 16,
//           );
//
//         case 404:
//           return Fluttertoast.showToast(
//             msg: "Resource Not Found",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM,
//             timeInSecForIosWeb: 1,
//             backgroundColor: MyColor.red,
//             textColor: MyColor.white,
//             fontSize: 16,
//           );
//
//         case 500:
//           return Fluttertoast.showToast(
//             msg: "Internal Server Error",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM,
//             timeInSecForIosWeb: 1,
//             backgroundColor: MyColor.red,
//             textColor: MyColor.white,
//             fontSize: 16,
//           );
//         default:
//           return Fluttertoast.showToast(
//             msg: "Unknown Error",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM,
//             timeInSecForIosWeb: 1,
//             backgroundColor: MyColor.red,
//             textColor: MyColor.white,
//             fontSize: 16,
//           );
//       }
//     }
//   }
//
//   static Future<dynamic> get(body, url) async {
//
//     var baseUrl = Uri.http(Utils.FinalLiveUrl,'${Utils.LiveUrl}$url');
//     // SharedPreferences sharedPreferences =  await SharedPreferences.getInstance();
//     // var deviceId = sharedPreferences.getString("deviceId");
//     // var userId = sharedPreferences.getString("userId");
//     _setHeadersPost() => {
//       'Content-type': 'application/json',
//       'Accept': 'application/json',
//       'Authorization': '4ccda7514adc0f13595a585205fb9761',
//       'User-Id': '$userId',
//       'Device-Id':'$deviceId',
//       'App-Version': Utils.currentVersionId
//     };
//
//     var baseUrl = Uri.http(Utils.FinalLiveUrl,'${Utils.LiveUrl}$url');
//
//     http.Response response =
//     await http.post(Utils.FinalLiveUrl, '${Utils.LiveUrl}$url');
//
//     http.Response response = await http.post(baseUrl,
//       headers: _setHeadersGet(),);
//
//     print(jsonEncode(body));
//
//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       switch (response.statusCode) {
//         case 400:
//           return Fluttertoast.showToast(
//             msg: "Bad Response Format",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM,
//             timeInSecForIosWeb: 1,
//             backgroundColor: MyColor.red,
//             textColor: MyColor.white,
//             fontSize: 16,
//           );
//
//         case 401:
//           return Fluttertoast.showToast(
//             msg: "Unauthorized User",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM,
//             timeInSecForIosWeb: 1,
//             backgroundColor: MyColor.red,
//             textColor: MyColor.white,
//             fontSize: 16,
//           );
//
//         case 404:
//           return Fluttertoast.showToast(
//             msg: "Resource Not Found",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM,
//             timeInSecForIosWeb: 1,
//             backgroundColor: MyColor.red,
//             textColor: MyColor.white,
//             fontSize: 16,
//           );
//
//         case 500:
//           return Fluttertoast.showToast(
//             msg: "Internal Server Error",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM,
//             timeInSecForIosWeb: 1,
//             backgroundColor: MyColor.red,
//             textColor: MyColor.white,
//             fontSize: 16,
//           );
//         default:
//           return Fluttertoast.showToast(
//             msg: "Unknown Error",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM,
//             timeInSecForIosWeb: 1,
//             backgroundColor: MyColor.red,
//             textColor: MyColor.white,
//             fontSize: 16,
//           );
//       }
//     }
//   }
//
//   static Map<String, String> getHeaders(userId,deviceId) {
//
//     Map<String, String> headers = {
//       'Content-type': 'application/json',
//       'Accept': 'application/json',
//       'Authorization':'4ccda7514adc0f13595a585205fb9761',
//       'User-Id': '${userId}',
//       'Device-Id': '${deviceId}',
//       // 'App-Version': Utils.currentVersionId
//     };
//     print('headers124->$headers');
//     return headers;
//   }
//
//
//
//
// }
