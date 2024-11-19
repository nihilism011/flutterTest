// import 'package:flutter/material.dart';
//
// class CheckImageBoxBtn extends StatefulWidget {
//
//   String label;
//   String img;
//
//   CheckImageBoxBtn({super.key,required this.label,required this.img});
//
//   @override
//   _CheckImageBoxBtn createState() => _CheckImageBoxBtn();
// }
//
// class _CheckImageBoxBtn extends State<CheckImageBoxBtn> {
//   bool isChecked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       Container(
//         height: 100,
//         child: Row(
//           children: [
//             Flexible(child: ListTile(
//               title: Text(widget.label),
//               leading: Checkbox(
//                   value: isChecked,
//                   onChanged: (value) {
//                     setState(() {
//                       isChecked = value ?? false;
//                     });
//                   }),
//             ),flex: 3,),
//             if(isChecked)
//               Container(
//                 width: 100,
//                 height: 100,
//                 child: Image.asset(widget.img),
//               )
//           ],
//         ),
//       )
//
//       Column(
//       children: [
//         ListTile(
//           title: Text(widget.label),
//           leading: Checkbox(
//               value: isChecked,
//               onChanged: (value) {
//                 setState(() {
//                   isChecked = value ?? false;
//                 });
//               }),
//         ),
//         if(isChecked)
//           Container(
//             width: 100,
//             height: 100,
//             child: Image.asset(widget.img),
//           )
//       ],
//     );
//   }
// }
