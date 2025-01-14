import 'package:flutter/material.dart';

class CustomSignupTextfield extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool isRequired;
  final String? description;
  final IconData? menuIcon;

  const CustomSignupTextfield({
    Key? key,
    required this.label,
    required this.controller,
    this.isRequired = true,
    this.description,
    this.menuIcon,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
              ),
              // Optional description text below the label
              if (description != null)
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    description!,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              const SizedBox(height: 4),
              Container(
                height: 30,
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    labelText: null,
                    border: InputBorder.none,
                    isDense: true, // Ensures the field is compact
                    contentPadding: const EdgeInsets.symmetric(vertical: 4),
                  ),
                  style: const TextStyle(fontSize: 12),
                ),
              ),
              // Optional menu icon beside the dot if passed
              if (menuIcon != null)
                Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    menuIcon,
                    color: Colors.grey[600],
                    size: 20,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
