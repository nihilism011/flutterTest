import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  // 필요한 경우 AppBar의 제목 등을 파라미터로 받을 수 있습니다.
  final String title;

  const MyAppBar({super.key, this.title = 'My App'});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: [
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            // 설정 버튼 클릭 시 동작할 코드
            print("Settings clicked");
          },
        ),
      ],
    );
  }

  // PreferredSizeWidget을 구현하기 위해 preferredSize를 정의
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}