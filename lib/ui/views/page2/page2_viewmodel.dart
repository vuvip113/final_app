import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Page2ViewModel extends BaseViewModel {
  String selectedValue = '';
  TextEditingController textFieldController = TextEditingController();

  List<String> dropdownItems = ['Option 1', 'Option 2', 'Option 3'];

  void onDropdownChanged(String? newValue) {
    selectedValue = newValue!;
    notifyListeners();
  }

  void onSubmit() {
    String textValue = textFieldController.text;
    print('Text Value: $textValue');
    print('Selected Dropdown Value: $selectedValue');
  }
}
