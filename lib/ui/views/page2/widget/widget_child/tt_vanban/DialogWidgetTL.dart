// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:final_app/ui/common/ui_helpers.dart';
import 'package:final_app/ui/views/page2/widget/widget_child/tt_vanban/tt_benphai.dart';
import 'package:final_app/ui/views/page2/widget/widget_child/tt_vanban/tt_bentai.dart';
import 'package:flutter/material.dart';

class DialogWidgetTL1 extends StatelessWidget {
  const DialogWidgetTL1({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(defaultPadding * 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tạo mới thông tin tài liệu",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF54595E),
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceSmall,
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: tt_bentrai(),
                        ),
                        Expanded(
                          child: tt_benphai(),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              top: 10,
              right: 10,
              height: 25,
              width: 25,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.all(8),
                  shape: CircleBorder(),
                  backgroundColor: Color(0xfff3f3f3),
                ),
                //
                child: Text(
                  "X",
                  style: TextStyle(color: Color(0xFF4f4f4f)),
                ),
              ))
        ],
      ),
    );
  }
}
