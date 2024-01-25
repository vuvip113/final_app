import 'package:dotted_border/dotted_border.dart';
import 'package:final_app/ui/common/app_colors.dart';
import 'package:final_app/ui/common/global_images.dart';
import 'package:final_app/ui/common/ui_helpers.dart';
import 'package:final_app/ui/views/home/widget/components/icon_top_bar.dart';
import 'package:final_app/ui/views/page2/widget/widget_child/iCon_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class tt_bentrai extends StatelessWidget {
  const tt_bentrai({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(defaultPadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xFFD9D9D9),
          ),
          height: 600,
          width: 800,
          child: DottedBorder(
            borderType: BorderType.RRect,
            strokeWidth: 1,
            dashPattern: [10],
            radius: Radius.circular(8),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconsTopBar(
                      iconPath: Globalsvg.add,
                      onPressed: () {},
                      horizontalPadding: 8,
                      verticalPadding: 8,
                      color: Color(0xFF4D4D4D)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Chọn File từ thiết bị ",
                        style: TextStyle(
                          color: Color(0xFFF06548),
                        ),
                      ),
                      Text("kéo thả file vào đây để tải lên")
                    ],
                  ),
                  Text(
                      "Kích thước file không quả 100MB, định dạng hỗ trợ PDF, PNG, JPG.")
                ],
              ),
            ),
          ),
        ),
        verticalSpaceSmall,
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: MyIconButton(
                        onPressed: () {
                          // Logic khi nút được nhấn vào
                          print('Button Pressed');
                        },
                        icon: Globalsvg.noteStack,
                        splashColor: Colors.transparent,
                        defaultColor: orangeNormal, // Màu sắc mặc định
                        pressedColor: whiteMSNormal, // Màu sắc khi nhấn
                      ),
                    ),
                    horizontalSpaceSmall,
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: MyIconButton(
                        onPressed: () {
                          // Logic khi nút được nhấn vào
                          print('Button Pressed');
                        },
                        icon: Globalsvg.noteStack,
                        splashColor: Colors.transparent,
                        defaultColor: orangeNormal, // Màu sắc mặc định
                        pressedColor: whiteMSNormal, // Màu sắc khi nhấn
                      ),
                    ),
                  ],
                ),
                horizontalSpaceLarge,
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_left_outlined)),
                    Container(
                      width: 70,
                      height: 100,
                      color: Colors.red,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(Globalsvg.arrowRight)),
                  ],
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
