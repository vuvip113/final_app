// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionBox extends StatefulWidget {
  double width;

  DescriptionBox({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  _DescriptionBoxState createState() => _DescriptionBoxState();
}

class _DescriptionBoxState extends State<DescriptionBox> {
  bool hasFocus = false;
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
    focusNode.addListener(() {
      setState(() {
        hasFocus = focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Mô tả',
            style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF4D4D4D)),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: hasFocus
                  ? [
                      BoxShadow(
                        color: const Color(0xFFFF5400).withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 2),
                      ),
                    ]
                  : [],
            ),
            child: TextFormField(
              focusNode: focusNode,
              minLines: 4,
              maxLines: 4,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: 'Nhập mô tả',
                hintStyle: GoogleFonts.inter(
                    color: Color(0xFFC4C4C4),
                    fontSize: 12,
                    fontWeight: FontWeight.w300),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Color(0xFFF37748), width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Color(0xFFD9D9D9),
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
