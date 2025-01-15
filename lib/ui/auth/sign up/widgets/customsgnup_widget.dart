import 'package:flutter/material.dart';

class SignupTextfield extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool isRequired;
  final String? description;
  final IconData? menuIcon;
  final VoidCallback? onButtonPressed;
  final bool enabled;
  final Color cursorColor; // Add cursorColor as a parameter

  const SignupTextfield({
    Key? key,
    required this.label,
    required this.controller,
    this.isRequired = true,
    this.description,
    this.menuIcon,
    this.onButtonPressed,
    this.enabled = true,
    this.cursorColor = Colors.grey, // Default to gray if not provided
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
            if (description != null ||
                onButtonPressed != null ||
                menuIcon != null)
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
              fontSize: 12, color: Color.fromARGB(255, 106, 102, 102)),
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
        padding: const EdgeInsets.symmetric(
            horizontal: 12.0), // Add padding for left and right indent
        child: Row(
          children: [
            _buildLeftSideContent(),
            const SizedBox(width: 8),
            Expanded(
              child: TextField(
                controller: controller,
                cursorColor: cursorColor, // Set cursor color here
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

  Widget _buildLeftSideContent() {
    if (description != null) {
      return Text(
        description!,
        style: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
      );
    } else if (onButtonPressed != null) {
      return Container(
        width: 80,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey),
        ),
        child: TextButton(
          onPressed: onButtonPressed,
          style: TextButton.styleFrom(padding: EdgeInsets.zero), // No padding
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add, size: 12, color: Colors.black),
              SizedBox(width: 4), // Space between icon and text
              Text(
                '+1',
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
