import 'package:flutter/material.dart';

Widget iconBottomAppBar({
  double high = 80,
  Color bgColor = Colors.black,
  required List<Map<String, dynamic>> icons,
  Color iconColor = Colors.white,
}) {
  List<Widget> iconList = icons.map((iconData) {
    return IconButton(
      icon: Icon(iconData['icon'], color: iconColor),
      onPressed: iconData['onPressed'],
    );
  }).toList();

  return BottomAppBar(
    height: high,
    color: bgColor,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: iconList,
    ),
  );
}