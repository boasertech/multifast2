import 'package:flutter/services.dart';

class DateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    // Si el texto tiene más de 10 caracteres, no permitimos más
    if (newValue.text.length > 10) {
      return oldValue;
    }

    // Añadimos automáticamente los slashes después de 2 y 4 caracteres
    String newText = newValue.text.replaceAll('/', '');
    if (newText.length > 2 && newText.length <= 4) {
      newText = '${newText.substring(0, 2)}/${newText.substring(2)}';
    } else if (newText.length > 4 && newText.length <= 6) {
      newText = '${newText.substring(0, 2)}/${newText.substring(2, 4)}/${newText.substring(4)}';
    } else if (newText.length > 6) {
      newText = '${newText.substring(0, 2)}/${newText.substring(2, 4)}/${newText.substring(4)}';
    }

    return newValue.copyWith(text: newText, selection: TextSelection.collapsed(offset: newText.length));
  }
}

String dateWithZeros(DateTime value) {
  String date = '${verifyDigits(value.day.toString())}/${verifyDigits(value.month.toString())}/${value.year}';
  String time =
      '${verifyDigits(value.hour.toString())}:${verifyDigits(value.minute.toString())}:${verifyDigits(value.second.toString())}';
  return '$date $time';
}

String onlyDate(DateTime value) {
  String date = '${verifyDigits(value.day.toString())}/${verifyDigits(value.month.toString())}/${value.year}';
  return date;
}

String verifyDigits(String value) {
  return value.length == 1 ? '0$value' : value;
}
