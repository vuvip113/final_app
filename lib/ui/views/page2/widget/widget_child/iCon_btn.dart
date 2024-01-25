// icon_button.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyIconButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String icon;
  final Color splashColor;
  final Color defaultColor; // Màu sắc mặc định của biểu tượng
  final Color pressedColor; // Màu sắc khi nút được nhấn

  MyIconButton({
    required this.onPressed,
    required this.icon,
    required this.splashColor,
    required this.defaultColor,
    required this.pressedColor,
  });

  @override
  _MyIconButtonState createState() => _MyIconButtonState();
}

class _MyIconButtonState extends State<MyIconButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: () {
          setState(() {
            isPressed = !isPressed; // Chuyển đổi trạng thái nhấn
          });
          widget.onPressed(); // Gọi hàm onPressed từ bên ngoài
        },
        splashColor: widget.splashColor,
        child: Ink(
          padding: const EdgeInsets.all(8.0), // Padding cho Ink
          decoration: BoxDecoration(
            color: isPressed
                ? widget.pressedColor
                : widget.defaultColor, // Màu sắc của Ink
            borderRadius: BorderRadius.circular(8), // Bo góc border
          ),
          child: SvgPicture.asset(
            widget.icon,
            color: Colors.white, // Màu sắc của biểu tượng
          ),
        ),
      ),
    );
  }
}
