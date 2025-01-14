import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Icon prefixIcon;
  final FocusNode? focusNode;
  final VoidCallback? onSubmit;
  final bool autofocus;

  const CustomTextField(
      {Key? key,
      required this.hintText,
      required this.prefixIcon,
      this.focusNode,
      this.onSubmit,
      this.autofocus = false,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      autofocus: autofocus,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white54),
        filled: true,
        fillColor: Colors.grey[850],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
      style: const TextStyle(color: Colors.white),
      onSubmitted: (_) => onSubmit?.call(),
    );
  }
}
