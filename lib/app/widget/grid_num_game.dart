import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class GridNumGame extends StatefulWidget {
  const GridNumGame({super.key});

  @override
  State<StatefulWidget> createState() => GridNumGameState();
}

class GridNumGameState extends State<GridNumGame> {
  List<int> numList = [];  // 숫자 리스트
  int nextNum = 1;  // 맞춰야 할 숫자
  int timerValue = 0;  // 타이머 값 (초)
  late Timer _timer;  // 타이머 객체
  bool gameStarted = false;  // 게임 시작 여부

  // 게임 시작 시 숫자 리스트를 무작위로 섞음
  @override
  void initState() {
    super.initState();
    _generateRandomNumbers();
  }

  // 1~25까지의 숫자 리스트를 랜덤하게 섞음
  void _generateRandomNumbers() {
    numList = List<int>.generate(25, (index) => index + 1);
    numList.shuffle(Random());  // 무작위로 섞기
  }

  // 게임 시작
  void startGame() {
    setState(() {
      gameStarted = true;
      nextNum = 1;
      timerValue = 0;
      _generateRandomNumbers();  // 숫자 다시 랜덤하게 섞기
    });
    _startTimer();  // 타이머 시작
  }

  // 타이머 시작
  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        timerValue++;  // 매초 1초씩 증가
      });
    });
  }

  // 게임이 끝났을 때 호출되는 메서드
  void _showSuccessDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Success!"),
          content: Text("You completed the game in $timerValue seconds."),
          actions: [
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();  // 다이얼로그 닫기
                _resetGame();  // 게임 리셋
              },
            ),
          ],
        );
      },
    );
  }

  // 게임 리셋
  void _resetGame() {
    setState(() {
      gameStarted = false;
      nextNum = 1;
      timerValue = 0;
      _generateRandomNumbers();  // 숫자 다시 랜덤하게 섞기
    });
  }

  // 맞춘 숫자에는 빨간색 표시
  Widget btn(int label) {
    return GestureDetector(
      onTap: () {
        // 숫자 클릭 시 처리할 로직 (예: 맞으면 nextNum을 증가)
        if (label == nextNum) {
          setState(() {
            nextNum++;
            // 게임이 끝났으면 다이얼로그 표시
            if (nextNum > 25) {
              _showSuccessDialog();
            }
          });
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: label <= nextNum - 1 ? Colors.red : Colors.blue, // 맞춘 숫자는 빨간색
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            label.toString(),
            style: TextStyle(
              fontSize: 25,
              color: label <= nextNum - 1 ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 타이머와 nextNum을 표시하는 Row 추가
        Flexible(
          flex: 1,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Time: $timerValue', // 타이머 값 표시
                  style: TextStyle(fontSize: 25, color: Colors.red),
                ),
              ),
              Spacer(),  // 오른쪽으로 공간을 밀어줌
              Container(
                padding: EdgeInsets.all(16),
                alignment: Alignment.bottomRight,
                child: Text(
                  nextNum.toString(), // 맞춰야 할 숫자
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        ),
        // 게임 시작 버튼
        if (!gameStarted)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: startGame,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                textStyle: TextStyle(fontSize: 20),
              ),
              child: Text(
                'Start Game',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        Flexible(
          flex: 9,
          child: GridView.builder(
            padding: EdgeInsets.all(8),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemCount: 25,
            itemBuilder: (context, index) {
              return btn(numList[index]);
            },
          ),
        ),
      ],
    );
  }
}
