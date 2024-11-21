import 'package:first_flutter_test_space/app/common_widget/common_app_bar.dart';
import 'package:first_flutter_test_space/app/common_widget/common_bottom_app_bar.dart';
import 'package:first_flutter_test_space/app/utils/toast_message.dart';
import 'package:first_flutter_test_space/app/widget/qr_code.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class QrCreatePage extends StatefulWidget {
  const QrCreatePage({super.key});

  @override
  State<StatefulWidget> createState() => QrCreatePageState();
}

class QrCreatePageState extends State<QrCreatePage> {
  String url = "";
  readData() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // url = prefs.getString('qrUrl');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(),
      body: Container(
        margin: EdgeInsets.all(50),
        child: Center(
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  setState(() {
                    url = value;
                  });
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.file_copy),
                  labelText: "URL 입력",
                  hintText: "예: naver.com",
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    // toastMessage(msg: url);
                    // await prefs.setString('qrUrl', url);
                  },
                  child: Text("url 확인")),
              if (url != null || url != '')
                QrCode(
                  url: url,
                  size: 200,
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CommonBottomAppBar(),
    );
  }
}
