import 'package:first_flutter_test_space/app/widget/grid_num_game.dart';
import 'package:first_flutter_test_space/app/widget/rating_bar_test.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: MaterialApp(
          home: Scaffold(
        appBar: AppBar(
          title: Text("여긴 두번째 페이지임 ㄹㅇ"),
          bottom: TabBar(tabs: [Text("숫자게임"),Text("별점"),Text("없음")]),
        ),
        body:TabBarView(children: [GridNumGame(),RatingBarTest(),Text("없음")]),

        bottomNavigationBar: BottomAppBar(
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("이전 페이지"),
            ),
          ),
        ),
      )),
    );
  }
}
