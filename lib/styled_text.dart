import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;
  const StyledText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.yellow,
            backgroundColor: Colors.black,
            fontFamily: 'Times New Roman'),
      ),
    );
  }
}
