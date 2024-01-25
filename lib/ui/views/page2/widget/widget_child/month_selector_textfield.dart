import 'package:flutter/material.dart';

class DatePickerBtn extends StatefulWidget {
  const DatePickerBtn({Key? key}) : super(key: key);

  @override
  State<DatePickerBtn> createState() => _DatePickerBtnState();
}

class _DatePickerBtnState extends State<DatePickerBtn> {
  DateTime selectedDate = DateTime.now();
  late TextEditingController dateController;
  bool hasFocus = false;
  late FocusNode focusNode;

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    dateController = TextEditingController(
      text: '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
    );
    focusNode = FocusNode();
    focusNode.addListener(() {
      setState(() {
        hasFocus = focusNode.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 343,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Ngày, tháng, năm của ảnh'),
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
            height: 40,
            child: TextField(
              focusNode: focusNode,
              controller: dateController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () async {
                    final DateTime? dateTime = await showDatePicker(
                      context: context,
                      initialDate: selectedDate,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(3000),
                    );
                    if (dateTime != null) {
                      setState(() {
                        selectedDate = dateTime;
                        dateController.text =
                            '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}';
                      });
                    }
                  },
                  icon: Icon(Icons.calendar_today),
                ),
                contentPadding: EdgeInsets.all(10), // Adjust the padding
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
