import 'package:first_flutter_test_space/app/Pages/qr_create_page.dart';
import 'package:first_flutter_test_space/app/common_widget/common_app_bar.dart';
import 'package:first_flutter_test_space/app/common_widget/common_bottom_app_bar.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  void navi(context, widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(),
      body: Center(
          child: Row(
        children: [
          ElevatedButton(
              onPressed: () {
                navi(context, QrCreatePage());
              },
              child: Text("qr 코드 생성기"))
        ],
      )),
      bottomNavigationBar: CommonBottomAppBar(),
    );
  }
}
