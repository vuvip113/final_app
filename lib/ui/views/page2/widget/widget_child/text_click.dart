// ignore_for_file: avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextShadow extends StatefulWidget {
  double width;
  final String textbtn, hintText, icon;

  TextShadow({
    Key? key,
    required this.width,
    required this.textbtn,
    required this.hintText,
    required this.icon,
  }) : super(key: key);

  @override
  State<TextShadow> createState() => _TextShadow();
}

class _TextShadow extends State<TextShadow> {
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
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              Text(widget.textbtn),
              Tooltip(
                message: "bắt buộc phải nhập",
                preferBelow: false,
                child: Text(
                  widget.icon,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.red),
                ),
              ),
            ],
          ),
          Container(
            width: widget.width,
            height: 40,
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
            child: TextField(
              focusNode: focusNode,
              style: GoogleFonts.inter(
                fontSize: 12,
                color: const Color(0xFF4D4D4D),
              ),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
                hintText: widget.hintText,
                hintStyle: GoogleFonts.inter(
                  fontSize: 12,
                  color: const Color(0xFFC4C4C4),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xFFF37748), width: 2),
                  borderRadius: BorderRadius.circular(6),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFFD9D9D9)),
                  borderRadius: BorderRadius.circular(6),
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
