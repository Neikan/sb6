// Flutter imports:
import 'package:flutter/material.dart';

class AppSearchField extends StatelessWidget {
  final String? labelText;
  final EdgeInsets? padding;

  const AppSearchField({
    super.key,
    this.labelText,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: TextField(
        cursorColor: Colors.purple,
        decoration: _getInputDecoration(),
        onChanged: (value) {},
      ),
    );
  }

  InputDecoration _getInputDecoration() {
    return InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.purple),
      ),
      labelText: labelText,
      labelStyle: TextStyle(color: Colors.purple),
      hintText: 'Введите значение',
      suffixIcon: Icon(
        Icons.search,
        color: Colors.purple,
      ),
      helperText: 'Поле для поиска заметок',
    );
  }
}
