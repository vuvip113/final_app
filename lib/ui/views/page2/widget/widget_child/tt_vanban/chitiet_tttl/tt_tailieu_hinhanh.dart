import 'package:final_app/ui/common/ui_helpers.dart';
import 'package:final_app/ui/views/page2/widget/widget_child/ghichu_txt.dart';
import 'package:final_app/ui/views/page2/widget/widget_child/list_view.dart';
import 'package:final_app/ui/views/page2/widget/widget_child/month_selector_textfield.dart';
import 'package:final_app/ui/views/page2/widget/widget_child/text_click.dart';
import 'package:flutter/material.dart';

class tt_tailieu_hinhanh extends StatelessWidget {
  const tt_tailieu_hinhanh({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Thông tin tài liệu",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xFF54595E),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // mainAxisAlignment:
              //     MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextShadow(
                    icon: "*",
                    width: 343,
                    hintText: "Hình ảnh",
                    textbtn: "Khung biên mục tài liệu"),
                horizontalSpaceLarge,
                TextShadow(
                    icon: "*",
                    width: 343,
                    hintText: "Nhập màu sắc hình ảnh",
                    textbtn: "Màu sắc tài liệu"),
              ],
            ),
            Row(
              children: [
                TextShadow(
                    icon: "*",
                    width: 343,
                    hintText: "Hình ảnh",
                    textbtn: "Khung biên mục tài liệu"),
                horizontalSpaceLarge,
                DropDownBtn(
                    width: 343,
                    textbtn: "* Chế độ sử dụng",
                    textfield: "Không hạn chế",
                    options: ["1", "2", "3"]),
              ],
            ),
            Row(
              children: [
                TextShadow(
                    icon: "*",
                    width: 343,
                    hintText: "Chưa biên mục",
                    textbtn: "Số lưu trữ"),
                horizontalSpaceLarge,
                DropDownBtn(
                    width: 343,
                    textbtn: "Thời hạn tài liệu",
                    textfield: "Vô thời hạn",
                    options: ["1", "2", "3"]),
              ],
            ),
            Row(
              children: [
                TextShadow(
                    icon: "*",
                    width: 343,
                    textbtn: "Tiêu đề hình ảnh",
                    hintText: "Ten nguoi"),
                horizontalSpaceLarge,
                TextShadow(
                    icon: "*",
                    width: 343,
                    textbtn: "Tệp đính kèm",
                    hintText: "Upload tài liệu đính kèm"),
              ],
            ),
            Row(
              children: [
                DatePickerBtn(),
                horizontalSpaceLarge,
                TextShadow(
                    icon: "",
                    width: 343,
                    textbtn: "Tình trạng vật lý",
                    hintText: "Nhập tình trạng vật lý"),
              ],
            ),
            DescriptionBox(width: 343 + 343 + 50),
          ],
        ),
      ],
    );
  }
}
