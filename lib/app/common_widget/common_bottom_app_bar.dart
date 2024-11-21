import 'package:first_flutter_test_space/app/Pages/index_page.dart';
import 'package:flutter/material.dart';

class CommonBottomAppBar extends StatelessWidget {
  const CommonBottomAppBar({super.key});

  void handleGoBackBtn(context) {
    if(Navigator.canPop(context)){
      Navigator.pop(context);
    }else{
      print("뒤로 갈 페이지 현재 없음.");
    }
  }
  void handleGoHomeBtn(BuildContext context) {
    if (ModalRoute.of(context)?.settings.name == '/') {
      print("이미 홈 화면.");
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => IndexPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 60,
      color: Colors.black,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
          onPressed: () {
            handleGoBackBtn(context);
          },
          icon: Icon(Icons.arrow_back,color: Colors.pinkAccent,),
        ),
        IconButton(
            onPressed: () {
              handleGoHomeBtn(context);
            },
            icon: Icon(Icons.home,color: Colors.pinkAccent)),
        IconButton(
            onPressed: () {
              print("메뉴버튼 클릭!");
            },
            icon: Icon(Icons.menu,color: Colors.pinkAccent))
      ]),
    );
  }
}
