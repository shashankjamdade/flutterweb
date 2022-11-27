import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String labelText;
  final String placeholder;
  final Color color;
  final double fontSize;
  final bool password;
  final TextAlign alignment;
  final String? Function(String?)? validator;

  InputField({
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.labelText = '',
    this.placeholder = '',
    this.color = Colors.grey,
    this.fontSize = 16.0,
    this.password = false,
    this.alignment = TextAlign.center,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: this.alignment,
      decoration: InputDecoration(
        fillColor: Colors.transparent,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: this.color,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: this.color,
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: this.placeholder,
        hintStyle: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.normal,
        ),
        filled: true,
      ),
      controller: this.controller,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.normal,
      ),
      keyboardType: this.keyboardType,
      obscureText: this.password,
      autocorrect: false,
      validator: this.validator,
    );
  }
}
