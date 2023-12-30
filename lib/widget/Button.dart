import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color buttonColor;

  const ButtonWidget({
    super.key, required this.text, required this.onTap, required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(

            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            )

        ),
        onPressed: onTap, child: Text(text,style: TextStyle(color: Colors.black87),));
  }
}
