import 'package:flutter/material.dart';

 class CheckImageBoxBtn extends StatefulWidget {
  String label;
  String img;

  CheckImageBoxBtn({super.key, required this.label, required this.img});

  @override
  _CheckImageBoxBtn createState() => _CheckImageBoxBtn();
}

class _CheckImageBoxBtn extends State<CheckImageBoxBtn> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Flexible(
            flex: 3,
            child: ListTile(
              title: Text(widget.label),
              onTap: () => setState(() {
                isChecked = !isChecked;
              }),
              leading: Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  }),
            ),
          ),
          Flexible(
            flex: 7,
            child: SizedBox(
              width: 100,
              height: 100,
              child: isChecked ? Image.asset(widget.img) : SizedBox(),
            ),
          )
        ],
      ),
    );
  }
}
