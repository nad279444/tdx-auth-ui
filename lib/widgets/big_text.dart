import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  const BigText({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    );
  }
}
