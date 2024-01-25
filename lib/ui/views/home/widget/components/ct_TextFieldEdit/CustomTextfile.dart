// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomTextfiled extends StatelessWidget {
  const CustomTextfiled(
      {super.key,
      required this.fillColor,
      required this.borderSide,
      required this.icon,
      required this.text,
      required this.enabled,
      required this.controller});

  final Color fillColor;
  final BorderSide borderSide;
  final String icon, text;
  final bool enabled;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: (Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                text,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF4d4d4d)),
              ),
              Tooltip(
                message: "bắt buộc phải nhập",
                preferBelow: false,
                child: Text(
                  icon,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.red),
                ),
              ),
            ],
          ),
          Container(
            width: 577,
            // height: 640,
            child: TextField(
              controller: controller,
              enabled: enabled,
              decoration: InputDecoration(
                // isCollapsed: true,
                contentPadding: EdgeInsets.all(18),
                isDense: true,
                hintStyle: TextStyle(
                  color: Color(0xFF323B4B),
                ),
                fillColor: fillColor,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: borderSide,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
