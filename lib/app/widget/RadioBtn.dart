import 'package:flutter/material.dart';

class RadioBtn extends StatefulWidget {
  const RadioBtn({super.key});

  @override
  _RadioBtn createState() => _RadioBtn();
}

class _RadioBtn extends State<RadioBtn> {
  String? selectValue;
  void setValue(String? value) {
    setState(() {
      selectValue = value;
    });
  }

  Widget sImage() {
    if (selectValue == null) {
      return Text("이미지를 선택해주세요");
    } else {
      return Image.asset("assets/$selectValue",
          height: 300, width: 300, fit: BoxFit.contain);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            leading: Radio(
                value: "bolbo.png",
                groupValue: selectValue,
                onChanged: setValue),
            title: Text("볼보로스"),
            onTap: () => setValue("bolbo.png")),
        ListTile(
          leading: Radio(
              value: "rai.png", groupValue: selectValue, onChanged: setValue),
          title: Text("레이기에나"),
        ),
        ListTile(
          leading: Radio(
              value: "riora.png", groupValue: selectValue, onChanged: setValue),
          title: Text("리오레이아"),
        ),
        Center(child: sImage())
      ],
    );
  }
}
