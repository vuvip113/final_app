// ignore_for_file: avoid_unnecessary_containers, must_be_immutable, prefer_const_constructors

import 'package:final_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';

class DropDownBtn extends StatefulWidget {
  double width;
  final String textbtn;
  final String textfield;
  final List<String> options;

  DropDownBtn({
    Key? key,
    required this.width,
    required this.textbtn,
    required this.textfield,
    required this.options,
  }) : super(key: key);

  @override
  State<DropDownBtn> createState() => _DropDownBtn();
}

class _DropDownBtn extends State<DropDownBtn> {
  String selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(0),
            child: Text(
              widget.textbtn,
            ),
          ),
          Container(
            width: widget.width,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: DropdownMenu(
              inputDecorationTheme: InputDecorationTheme(
                constraints: const BoxConstraints(maxHeight: 40),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF37748), width: 2),
                  borderRadius: BorderRadius.circular(6),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: whiteMSNormal),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              expandedInsets: const EdgeInsets.all(4),
              hintText: widget.textfield,
              width: widget.width,
              menuHeight: 120,
              enableSearch: true,
              enableFilter: true,
              menuStyle: const MenuStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                surfaceTintColor: MaterialStatePropertyAll<Color>(Colors.white),
              ),
              onSelected: (String? value) {
                setState(() {
                  selectedOption = value ?? '';
                });
              },
              dropdownMenuEntries: widget.options.map((option) {
                return DropdownMenuEntry(
                  value: option,
                  label: option,
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
