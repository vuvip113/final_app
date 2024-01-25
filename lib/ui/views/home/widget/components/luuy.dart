import 'package:flutter/material.dart';

class LuuY extends StatelessWidget {
  const LuuY({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Lưu ý: "),
            Text(
              "* ",
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w400, color: Colors.red),
            ),
            Text("có dấu sao là các trường bắt buộc phải nhập"),
          ]),
    );
  }
}
