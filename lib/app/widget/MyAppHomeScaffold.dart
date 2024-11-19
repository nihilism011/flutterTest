import 'package:first_flutter_test_space/app/widget/MyAppBar.dart';
import 'package:flutter/material.dart';

class MyAppHomeScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "myApp",),
      drawer: Drawer(),
      body: Row(),
      bottomNavigationBar: BottomAppBar(
      ),
    );
  }
}
