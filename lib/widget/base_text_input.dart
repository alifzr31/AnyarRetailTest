import 'package:flutter/material.dart';

class BaseTextInput extends StatelessWidget {
  const BaseTextInput({
    Key? key,
    required this.label,
    this.controller,
    this.suffixIcon,
    this.validator,
    this.obscureText = false,
  }) : super(key: key);

  final String label;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        label: Text(
          label,
          style: const TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.w500,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1.2,
            color: Colors.black54,
          ),
        ),
        suffixIcon: suffixIcon,
      ),
      validator: validator,
    );
  }
}
