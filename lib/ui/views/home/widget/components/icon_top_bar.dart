import 'package:final_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import '../../common/app_colors.dart';

class IconsTopBar extends StatelessWidget {
  final String iconPath;
  final double horizontalPadding;
  final double verticalPadding;
  final Function() onPressed;
  final Color color;
  const IconsTopBar({
    Key? key,
    required this.iconPath,
    required this.onPressed,
    required this.horizontalPadding,
    required this.verticalPadding,
    this.color = orangeNormal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: 32, // Đặt kích thước container
        height: 24,
        child: Stack(
          children: [
            // Lớp đen
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            // Icon
            Positioned.fill(
              child: Center(
                child: SvgPicture.asset(
                  iconPath,
                  width: 500,
                  height:
                      500, // Điều chỉnh kích thước của icon// Màu sắc của icon
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
