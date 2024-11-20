import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpTest extends StatefulWidget {
  const HttpTest({super.key});

  @override
  HttpTestState createState() {
    return HttpTestState();
  }
}

class HttpTestState extends State<HttpTest> {
  List<dynamic> list = [];

  @override
  void initState() {
    super.initState();
    fnList();
  }

  fnList() async {
    final res =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    if (res.statusCode == 200) {
      setState(() {
        list = json.decode(res.body);
        // print(list);
      });
    } else {
      //실패임
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(list[index]["name"]));
        });
  }
}
