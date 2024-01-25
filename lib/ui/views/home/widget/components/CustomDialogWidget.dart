// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:final_app/ui/common/global_images.dart';
import 'package:final_app/ui/common/ui_helpers.dart';
import 'package:final_app/ui/views/home/widget/components/CustomTextfile.dart';
import 'package:final_app/ui/views/home/widget/components/luuy.dart';
import 'package:final_app/ui/views/home/widget/components/snackbar_utils.dart';
import 'package:flutter/material.dart';

class CustomDialogWidget extends StatelessWidget {
  const CustomDialogWidget({super.key});

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
                    Text(
                      "Thêm kho mới",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF54595E),
                      ),
                    ),
                    CustomTextfiled(
                        icon: "*",
                        text: "Mã kho",
                        borderSide:
                            BorderSide(color: Color(0xfff3f3f3), width: 1),
                        fillColor: Colors.white,
                        hintText: "Nhập mã hộp/cặp"),
                    CustomTextfiled(
                        icon: "*",
                        text: "Mã kho",
                        borderSide:
                            BorderSide(color: Color(0xfff3f3f3), width: 1),
                        fillColor: Colors.white,
                        hintText: "Nhập mã hộp/cặp"),
                    CustomTextfiled(
                        icon: "*",
                        text: "Mã kho",
                        borderSide:
                            BorderSide(color: Color(0xfff3f3f3), width: 1),
                        fillColor: Colors.white,
                        hintText: "Nhập mã hộp/cặp"),
                    LuuY(),
                  ],
                ),
                SizedBox(height: defaultPadding),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // alignment: Alignment.center,
                      // padding: EdgeInsets.all(100),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(200, 60),
                          shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        onPressed: () {
                          showTopRightSnackBar(
                            context,
                            'Bạn đã gửi yêu cầu thành công!',
                            'Bạn cần đợi yêu cầu của bạn được gửi tới Admin để được cấp lại mật khẩu tới, bạn có thể LIÊN HỆ với Admin qua E-mail để đẩy nhanh tiến độ.',
                            backgroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            textColor: const Color.fromARGB(255, 0, 0, 0),
                            iconData: Globalsvg
                                .checkOne, // Thêm biểu tượng info bên trái
                          );
                          Navigator.of(context).pop();
                        },
                        child: const Text("Dong",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                      ),
                    ),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Container(
                        padding: EdgeInsets.all(defaultPadding),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xfff37748)),
                        child: Row(
                          children: [
                            Text(
                              'Tao moi',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                          ],
                        )),
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
