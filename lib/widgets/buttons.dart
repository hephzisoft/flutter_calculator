import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {this.color, this.textColor, this.buttonTapped, required this.buttonText, super.key});

  final color;
  final textColor;
  final String buttonText;
  final buttonTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            alignment: Alignment.center,
            color: color,
            child: Text(
              buttonText,
              // textAlign: TextAlign.center,
              style: TextStyle(color: textColor, fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
