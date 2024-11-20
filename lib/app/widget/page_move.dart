import 'package:first_flutter_test_space/app/Pages/second_page.dart';
import 'package:flutter/material.dart';

class PageMove extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=>SecondPage())
        );
      }, child: Text("세컨페이지 이동")),
    );
  }
}