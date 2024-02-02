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
