// form_widget.dart

import 'package:final_app/ui/views/page2/page2_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class FormWidget extends StatefulWidget {
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<Page2ViewModel>.reactive(
      viewModelBuilder: () => Page2ViewModel(),
      builder: (context, model, child) => Column(
        children: [
          TextField(
            controller: model.textFieldController,
            decoration: InputDecoration(
              labelText: 'Enter Text',
            ),
          ),
          SizedBox(height: 20),
          DropdownButton<String>(
            value: model.selectedValue,
            onChanged: model.onDropdownChanged,
            items: model.dropdownItems
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            hint: Text('Select an option'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: model.onSubmit,
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
