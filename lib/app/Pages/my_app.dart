import 'package:first_flutter_test_space/app/widget/CheckImageBoxBtn.dart';
import 'package:first_flutter_test_space/app/widget/HttpTest.dart';
import 'package:first_flutter_test_space/app/widget/MyTabBar.dart';
import 'package:first_flutter_test_space/app/widget/RadioBtn.dart';
import 'package:first_flutter_test_space/app/widget/number_game.dart';
import 'package:first_flutter_test_space/app/widget/page_move.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: MaterialApp(
            home: MyTabBar(
          title: "여기가 헤더임 ㄹㅇ",
          tabNameList: [Text("라디오"), Text("체크"), Text("통신"),Text("숫자게임"),Text("페이지이동")],
          tabPageList: [
            Center(child: RadioBtn()),
            Center(
                child: Column(
              children: [
                CheckImageBoxBtn(label: "볼보로스", img: "bolbo.png"),
                CheckImageBoxBtn(label: "레이기에나", img: "rai.png")
              ],
            )),
            Center(child: HttpTest()),
            Center(child: NumberGame(),),
            Center(child: PageMove(),)
          ],
        )));
  }
}
