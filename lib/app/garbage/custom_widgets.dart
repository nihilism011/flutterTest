import 'package:flutter/material.dart';

PreferredSizeWidget buildAppBar(String title, Color bgColor, Color color) {
  return AppBar(
    // leading: Icon(Icons.menu,color: Colors.white,),
    backgroundColor: bgColor,
    title: Text(title, style: TextStyle(color: color)),
    actions: [
      Icon(
        Icons.home,
        color: Colors.white,
      ),
      SizedBox(
        width: 50,
      ),
      Icon(
        Icons.login,
        color: Colors.white,
      ),
      SizedBox(
        width: 50,
      ),
      Icon(
        Icons.logout,
        color: Colors.white,
      ),
      SizedBox(
        width: 100,
      ),
    ],
  );
}

Widget buildImage(String imgName) {
  return Image.asset(imgName, fit: BoxFit.contain);
}

Widget testDrawer() {
  return Drawer(
      child: ListView(
    children: [
      DrawerHeader(
          decoration: BoxDecoration(color: Colors.black),
          child: Text(
            "menu입니다.",
            style: TextStyle(color: Colors.white),
          )),
      ListTile(
        leading: Icon(Icons.home),
        title: Text("홈"),
        onTap: () {
          print("홈으로 이동");
        },
      )
    ],
  ));
}

Widget flexibleTest() {
  return Column(
    children: [
      Flexible(
        flex: 1,
        child: Row(
          children: [
            Flexible(
                child: Container(
              color: Colors.blue,
            )),
            Flexible(
                child: Container(
              color: Colors.green,
            )),
            Flexible(
                child: Container(
              color: Colors.yellow,
            )),
          ],
        ),
      ),
      Flexible(
        flex: 1,
        child: Row(
          children: [
            Flexible(
                child: Container(
              color: Colors.black,
            )),
            Flexible(
                child: Container(
              color: Colors.red,
            )),
            Flexible(
                child: Container(
              color: Colors.cyan,
            )),
          ],
        ),
      )
    ],
  );
}

Widget buttonTest() {
  return Column(
    children: [
      Row(children: [
        Container(
          height: 100,
          width: 100,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(10)),
          child: Center(child: Text("박스?")),
        ),
        Container(
            height: 300,
            width: 300,
            margin: EdgeInsets.all(30),
            child: buildImage("bolbo.png"))
      ]),
      IconButton(
          onPressed: () {
            print("클릭!클릭!클릭!");
          },
          icon: Icon(Icons.access_alarm)),
      ElevatedButton(
          onPressed: () {
            print("저장!저장!저장!");
          },
          child: Row(
            children: [Text("저장!"), Icon(Icons.save_alt)],
          ))
    ],
  );
}
