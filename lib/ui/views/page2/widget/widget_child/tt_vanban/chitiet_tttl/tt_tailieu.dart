// ignore_for_file: prefer_const_constructors

import 'package:final_app/ui/common/ui_helpers.dart';
import 'package:final_app/ui/views/page2/widget/widget_child/text_click.dart';
import 'package:flutter/material.dart';

class tt_tailieu extends StatelessWidget {
  const tt_tailieu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Thông tin tài liệu - OCR",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF54595E),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1. Thông tin người sử dụng đất",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF54595E),
                ),
              ),
              Row(
                // mainAxisAlignment:
                //     MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextShadow(
                      icon: "*",
                      width: 343,
                      hintText: "Ten",
                      textbtn: "Chủ sử dụng đất"),
                  horizontalSpaceLarge,
                  TextShadow(
                      icon: "*",
                      width: 343,
                      hintText: "nam sinh",
                      textbtn: "Năm sinh"),
                ],
              ),
              Row(
                children: [
                  TextShadow(
                      icon: "*",
                      width: 343,
                      hintText: "Hình ảnh",
                      textbtn: "Họ và tên (chồng)"),
                  horizontalSpaceLarge,
                  TextShadow(
                      icon: "*",
                      width: 343,
                      hintText: "nam",
                      textbtn: "Năm sinh"),
                ],
              ),
              Row(
                children: [
                  TextShadow(
                      icon: "*",
                      width: 343,
                      hintText: "Hình ảnh",
                      textbtn: "Họ và tên (Vo)"),
                  horizontalSpaceLarge,
                  TextShadow(
                      icon: "*",
                      width: 343,
                      hintText: "nam",
                      textbtn: "Năm sinh"),
                ],
              ),
              Row(
                children: [
                  TextShadow(
                      icon: "",
                      width: 343,
                      textbtn: "Loai hop dong",
                      hintText: "..."),
                  horizontalSpaceLarge,
                  TextShadow(
                      icon: "",
                      width: 343,
                      textbtn: "Thuong chu",
                      hintText: "..."),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2. Tinh trang thua dat",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF54595E),
                ),
              ),
              Row(
                // mainAxisAlignment:
                //     MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextShadow(
                      icon: "*",
                      width: 343,
                      hintText: "...",
                      textbtn: "Thua đất so"),
                  horizontalSpaceLarge,
                  TextShadow(
                      icon: "*",
                      width: 343,
                      hintText: "..",
                      textbtn: "Dia chi"),
                ],
              ),
              Row(
                children: [
                  TextShadow(
                      icon: "*",
                      width: 343,
                      hintText: "...",
                      textbtn: "So GCN QSD dat"),
                  horizontalSpaceLarge,
                  TextShadow(
                      icon: "*",
                      width: 343,
                      hintText: ".....",
                      textbtn: "Ngay Cap"),
                ],
              ),
              Row(
                children: [
                  TextShadow(
                      icon: "*",
                      width: 343,
                      hintText: "....",
                      textbtn: "Noi cap"),
                  horizontalSpaceLarge,
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
