import 'package:final_app/ui/common/app_colors.dart';
import 'package:final_app/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void showTopRightSnackBar(
  BuildContext context,
  String message1,
  String message2, {
  Color backgroundColor = const Color.fromARGB(255, 255, 255, 255),
  Color textColor = const Color.fromARGB(255, 0, 0, 0),
  String? iconData,
}) {
  final overlay = Overlay.of(context);
  final overlayEntry = OverlayEntry(
    builder: (context) => Positioned(
      top: defaultPadding * 4,
      right: 10,
      child: Material(
        color: Colors.transparent,
        child: Container(
          padding: EdgeInsets.all(defaultPadding),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: whiteMSNormal, // Màu đường viền
              width: 1, // Độ rộng của đường viền
            ),
          ),
          child: Row(
            children: [
              if (iconData != null) // Hiển thị biểu tượng nếu được cung cấp

                Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: whiteMSNormal,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(
                    iconData,
                    // color: iconColor,
                    width: 50,
                  ),
                ),
              horizontalSpaceSmall, // Khoảng cách giữa biểu tượng và văn bản
              Container(
                width: 366,
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.start, // Thiết lập từ bên trái
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      message1,
                      style: TextStyle(
                          color: textColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      message2,
                      style: TextStyle(color: textColor),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );

  overlay.insert(overlayEntry);

  // Hiển thị trong khoảng thời gian ngắn
  Future.delayed(Duration(seconds: 2), () {
    overlayEntry.remove();
  });
}
