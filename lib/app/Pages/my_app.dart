import 'package:first_flutter_test_space/app/widget/CheckImageBoxBtn.dart';
import 'package:first_flutter_test_space/app/widget/MyTabBar.dart';
import 'package:first_flutter_test_space/app/widget/RadioBtn.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: MaterialApp(
            home: MyTabBar(
          title: "testSuc",
          tabNameList: [Text("tab1"), Text("tab2"), Text("tab3")],
          tabPageList: [
            Center(child: RadioBtn()),
            Center(
                child: Column(
              children: [
                CheckImageBoxBtn(label: "볼보로스", img: "bolbo.png"),
                CheckImageBoxBtn(label: "레이기에나", img: "rai.png")
              ],
            )),
            Center(child: Text("data3"))
          ],
        )));
  }
}
