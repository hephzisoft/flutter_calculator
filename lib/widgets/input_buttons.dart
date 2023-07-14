import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class InputButtons extends StatelessWidget {
  const InputButtons(
      {required this.bgColor,

      super.key,
        required this.child,
      required this.clickedInput});

  final Color bgColor;
  final Function clickedInput;
  final  Widget child ;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: bgColor,
        shape: BoxShape.circle,
      ),
      child: InkWell(
        onTap: () => clickedInput,
        child: child,
      ),
    );
  }
}
