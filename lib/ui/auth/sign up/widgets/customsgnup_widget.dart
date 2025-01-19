import 'package:flutter/material.dart';

class SignupTextfield extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool isRequired;
  final IconData? menuIcon;
  final VoidCallback? onButtonPressed;
  final bool enabled;
  final Color cursorColor;
  final bool showCursor;

  const SignupTextfield({
    Key? key,
    required this.label,
    required this.controller,
    this.isRequired = true,
    this.menuIcon,
    this.onButtonPressed,
    this.enabled = true,
    this.cursorColor = Colors.grey,
    this.showCursor = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildLabelRow(),
            if (onButtonPressed != null || menuIcon != null)
              _buildDescriptionRow(),
          ],
        ),
      ),
    );
  }

  Widget _buildLabelRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Color.fromARGB(255, 106, 102, 102),
          ),
        ),
        if (isRequired)
          const Icon(
            Icons.circle,
            color: Colors.red,
            size: 6,
          ),
      ],
    );
  }

  Widget _buildDescriptionRow() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          children: [
            if (onButtonPressed != null) _buildButton(),
            const SizedBox(width: 8),
            Expanded(
              child: TextField(
                controller: controller,
                cursorColor: cursorColor,
                showCursor: showCursor,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 4),
                ),
                style: const TextStyle(fontSize: 12),
                textAlign: TextAlign.left,
                enabled: enabled,
              ),
            ),
            if (menuIcon != null)
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Icon(menuIcon, size: 20, color: Colors.black),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton() {
    return Container(
      width: 80,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey),
      ),
      child: TextButton(
        onPressed: onButtonPressed,
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add, size: 12, color: Colors.black),
            SizedBox(width: 4),
            Text(
              '',
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
