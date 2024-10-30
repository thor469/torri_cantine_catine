import 'package:flutter/services.dart';

class DateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;
    text = text.replaceAll(RegExp(r'[^0-9]'), '');
    if (text.length >= 2) text = '${text.substring(0, 2)}/${text.substring(2)}';
    if (text.length >= 5) text = '${text.substring(0, 5)}/${text.substring(5)}';
    if (text.length > 10) text = text.substring(0, 10);
    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}
