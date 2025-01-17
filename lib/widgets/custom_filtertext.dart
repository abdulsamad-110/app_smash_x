import 'package:flutter/material.dart';

class CustomFilterText extends StatelessWidget {
  final String text;

  const CustomFilterText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        const Divider(),
        const SizedBox(height: 8),
        Text(
          text,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
