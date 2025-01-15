import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  final String? text;
  final VoidCallback onPressed;

  MyCustomButton({this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: 60,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          side: BorderSide(
            color: Colors.grey,
            width: 0.3,
          ),
          shape: RoundedRectangleBorder(),
        ),
        child: text != null
            ? Text(
                text!,
                style: TextStyle(
                  color: const Color.fromARGB(255, 105, 103, 103),
                  fontSize: 14,
                ),
              )
            : SizedBox.shrink(),
      ),
    );
  }
}
