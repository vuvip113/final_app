import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.iconPath,
      required this.text,
      required this.iconColor,
      required this.onPressed});
  final String iconPath;
  final String text;
  final Color iconColor;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(0),
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          minimumSize: Size(180, 45),
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: onPressed,
        icon: SvgPicture.asset(
          iconPath,
          color: iconColor,
        ),
        label: Text(
          text,
          style: TextStyle(color: Color(0xFF4D4D4D)),
        ),
      ),
    );
  }
}
