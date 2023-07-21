import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';

class DatePickerDropdown extends StatefulWidget {
  @override
  _DatePickerDropdownState createState() => _DatePickerDropdownState();
}

class _DatePickerDropdownState extends State<DatePickerDropdown> {
  String _selectedDate = 'Select a date';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // DropdownButton widget
        DropdownButton<String?>(
          value: _selectedDate,
          items: <String?>[
            'Select a date',
            // Add more options here if needed
          ].map((String? value) {
            return DropdownMenuItem<String?>(
              value: value,
              child: Text(value ?? ''),
            );
          }).toList(),
          onChanged: (String? newValue) {
            if (newValue == 'Select a date') {
              // Show the date picker when "Select a date" is chosen
              _showDatePicker();
            } else {
              setState(() {
                _selectedDate = newValue ?? 'Select a date';
              });
            }
          },
        ),
      ],
    );
  }

  void _showDatePicker() {
    DatePicker.showDatePicker(
      context,
      showTitleActions: true,
      onConfirm: (date) {
        setState(() {
          // Format the selected date as needed
          _selectedDate = "${date.year}-${date.month}-${date.day}";
        });
      },
      currentTime: DateTime.now(),
      locale: LocaleType.en, // Set the locale as needed
    );
  }
}
