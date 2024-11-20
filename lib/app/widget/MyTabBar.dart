
import 'package:first_flutter_test_space/app/widget/page_move.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  final String title;
  final List<Widget> tabNameList;
  final List<Widget> tabPageList;

  const MyTabBar({
    super.key,
    this.title = "title", // 기본값을 설정할 수 있음
    required this.tabNameList, // 필수로 받아야 하는 리스트
    required this.tabPageList, // 필수로 받아야 하는 리스트
  });

  @override
  _MyTabBarState createState() => _MyTabBarState();

}
class _MyTabBarState extends State<MyTabBar> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // 설정 버튼 클릭 시 동작할 코드
              print("Settings clicked");
            },
          ),
        ],
        bottom: TabBar(tabs: widget.tabNameList),
      ),
      body: TabBarView(children: widget.tabPageList)
        ,bottomNavigationBar: BottomAppBar(child: PageMove()),
    );
  }

}