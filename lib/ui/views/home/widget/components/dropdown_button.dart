// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

class MyDropdownButton extends StatefulWidget {
  @override
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  String? selectedValue =
      '1'; // Chú ý loại tham số của selectedValue là String?

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: DropdownButton<String>(
        focusColor: Colors.grey,
        value: selectedValue,
        onChanged: (String? newValue) {
          // Chú ý loại tham số của onChanged là String?
          setState(() {
            selectedValue = newValue;
          });
        },
        items: <String>['1', '2', '3', '4']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
