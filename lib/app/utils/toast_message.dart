import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

void toastMessage({required String msg}) {
  // 토스트 메시지를 띄우는 함수
  Fluttertoast.showToast(
    msg: msg, // 전달받은 메시지
    toastLength: Toast.LENGTH_SHORT, // 토스트 메시지 표시 시간 (짧게)
    gravity: ToastGravity.CENTER, // 토스트 메시지 위치 (하단)
    timeInSecForIosWeb: 2, // iOS 및 웹에서의 표시 시간
    backgroundColor: Colors.red, // 배경색
    textColor: Colors.white, // 텍스트 색상
    fontSize: 16.0, // 폰트 크기
  );
}