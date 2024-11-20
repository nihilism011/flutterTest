import 'dart:math';
import 'package:flutter/material.dart';

class NumberGame extends StatefulWidget {
  const NumberGame({super.key});

  @override
  State<NumberGame> createState() {
    return NumberGameState();
  }
}

class NumberGameState extends State<NumberGame> {
  Random random = Random();
  int each = 10;
  List<Widget> list = [];

  void fnTapBtn(int index) {
    print(each - list.length);
    if (index == (each - list.length)) {
      list.removeAt(0);
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    if (list.isEmpty) {
      for (int index = 0; index < each; index++) {
        list.add(Positioned(
            left: random.nextDouble() * (width - 150),
            top: random.nextDouble() * (height - 400) + 100,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  fnTapBtn(index);
                });
              },
              child: Container(
                width: 50,
                height: 50,
                color: Colors.black,
                child: Center(
                  child: Text(
                    (index + 1).toString(),
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            )));
      }
    }
    return Column(
      children: [
        Flexible(
          flex: 1,
          child: Text(
            "찾아라!${each - list.length+1}번",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold,fontSize: 20),
          ),
        ),
        Flexible(
          flex: 9,
          child: Stack(
            children: list,
          ),
        )
      ],
    );
  }
}
