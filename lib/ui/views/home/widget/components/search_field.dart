// ignore_for_file: prefer_const_constructors

import 'package:final_app/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:final_app/ui/common/global_images.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    required this.hintText,
    required this.fillColor,
    required this.borderSide,
  });

  final String hintText;
  final Color fillColor;
  final BorderSide borderSide;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: defaultPadding),
      width: 324,
      height: 32,
      child: TextField(
        decoration: InputDecoration(
          // isCollapsed: true,
          contentPadding: EdgeInsets.all(1),
          isDense: true,
          hintText: hintText,
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
          prefixIcon: InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(defaultPadding / 2),
              margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2.5),
              decoration: BoxDecoration(
                // color: primaryColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: SvgPicture.asset(
                Globalsvg.search,
                color: Color(0xFF323B4B),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
