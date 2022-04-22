import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String? labelText;
  final icon;
  final bool obscureText;
  final suffixIcon;
  final FormFieldValidator<String>? validator;
  final FormFieldValidator<String>? onSaved;
  TextFieldWidget(
      {required this.labelText,
      required this.icon,
      this.obscureText = false,
      this.suffixIcon,
      this.validator,
      this.onSaved});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        validator: validator,
        onSaved: onSaved,
        style: const TextStyle(fontSize: 14, color: Colors.blue),
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.blue),
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.blue)),
          prefixIcon: Icon(
            icon,
            size: 20,
            color: Colors.blue,
          ),
          suffixIcon: Icon(
            suffixIcon,
            size: 20,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
