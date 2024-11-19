// import 'package:first_flutter_test_space/app/Pages/homePage.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp2());
// }
//
// class MyApp2 extends StatefulWidget {
//   const MyApp2({super.key});
//
//   @override
//   State<MyApp2> createState() => _MyApp2State();
// }
//
// class _MyApp2State extends State<MyApp2> {
//   int num = 0;
//   var numColor = Colors.black;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Center(child: Text("data")),
//         ),
//         body: Column(
//           children: [
//             Flexible(
//               child: Center(child: Text("$num",style: TextStyle(
//                 color: numColor
//               ),)),
//               flex: 9,
//             ),
//             Align(
//                 alignment: Alignment.bottomRight,
//                 child: Flexible(
//                     child: IconButton(
//                         onPressed: () => {
//                               setState(() {
//                                 if(num%2 ==0){
//                                   numColor = Colors.blue;
//                                 }else{
//                                   numColor = Colors.red;
//                                 }
//                                 num += 1;
//                               })
//                             },
//                         icon: Icon(Icons.add)),
//                     flex: 1))
//           ],
//         ),
//       ),
//     );
//   }
// }
