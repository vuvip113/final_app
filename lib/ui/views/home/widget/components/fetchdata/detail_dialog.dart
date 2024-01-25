// detail_dialog.dart

import 'package:final_app/ui/views/home/widget/components/CustomTextfileXem.dart';
import 'package:flutter/material.dart';
import 'package:final_app/ui/common/ui_helpers.dart';
import 'package:final_app/model/myData.dart';

class DetailDialog extends StatelessWidget {
  final Results data;

  const DetailDialog({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7.0),
      ),
      title: Text('Thông tin chi tiết > ${data.firstName}'),
      content: Container(
        padding: EdgeInsets.all(defaultPadding * 2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextfiled(
              enabled: false,
              icon: "",
              text: "First Name",
              borderSide: BorderSide(color: Color(0xfff3f3f3), width: 1),
              fillColor: Colors.white,
              hintText: " ${data.firstName}",
            ),
            CustomTextfiled(
              enabled: false,
              icon: "",
              text: "Last Name",
              borderSide: BorderSide(color: Color(0xfff3f3f3), width: 1),
              fillColor: Colors.white,
              hintText: " ${data.lastName}",
            ),
            CustomTextfiled(
              enabled: false,
              icon: "",
              text: "Email",
              borderSide: BorderSide(color: Color(0xfff3f3f3), width: 1),
              fillColor: Colors.white,
              hintText: " ${data.email}",
            ),
            CustomTextfiled(
              enabled: false,
              icon: "hello",
              text: "Phone",
              borderSide: BorderSide(color: Color(0xfff3f3f3), width: 1),
              fillColor: Colors.white,
              hintText: " ${data.phone}",
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Đóng'),
        ),
      ],
    );
  }
}
