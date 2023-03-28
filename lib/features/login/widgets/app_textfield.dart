import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    required this.hintText,
    this.controller,
    this.onFieldSubmitted,
    this.onChanged,
    this.validator,
    this.focusNode,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    super.key,
  });

  final String hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Function(String)? onFieldSubmitted;
  final TextEditingController? controller;

  final FocusNode? focusNode;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      validator: validator,
      controller: controller,
      focusNode: focusNode,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText,
      ),
    );
  }
}
