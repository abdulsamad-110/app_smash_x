import 'package:flutter/material.dart';

class CustomRowWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback? onIconTap;
  final VoidCallback? onTextTap;

  const CustomRowWidget({
    Key? key,
    required this.icon,
    required this.text,
    this.onIconTap,
    this.onTextTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          ///// Left icon with onTap
          GestureDetector(
            onTap: onIconTap, 
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                icon,
                size: 24,
              ),
            ),
          ),
          
          ///// Centered text with onTap
          Expanded(
            child: GestureDetector(
              onTap: onTextTap, 
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          
          ///// Right menu icon with onTap
          IconButton(
            onPressed: onIconTap, 
            icon: const Icon(Icons.menu),
            iconSize: 24,
          ),
        ],
      ),
    );
  }
}
