// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:final_app/ui/common/app_colors.dart';
import 'package:final_app/ui/common/ui_helpers.dart';
import 'package:final_app/ui/views/home/widget/components/fetchdata/fetchdata.dart';
import 'package:final_app/ui/views/page2/widget/header_table.dart';
import 'package:flutter/material.dart';

class BodyTable extends StatelessWidget {
  const BodyTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: orangeLight,
      height: MediaQuery.of(context).size.height - 77,
      width: MediaQuery.of(context).size.width,
      child: Container(
        margin: EdgeInsets.all(24),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: orangeDarker),
          borderRadius: BorderRadius.circular(8), // Điều chỉnh màu sắc ở đây
        ),
        child: Column(
          children: [
            // Text("tren cung"),
            HeaderTable(),
            Divider(
              color: whiteMSNormal,
              thickness: 1.2,
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: FetchData(),
                ),
              ),
            ),
            // Text("giua"),
            // Spacer(),
            verticalSpaceLarge,
            Text("duoi cung"),
          ],
        ),
      ),
    );
  }
}
