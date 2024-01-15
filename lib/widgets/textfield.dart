import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key,
      required this.textController,
      required this.hintText,
      required this.icon});

  final TextEditingController textController;
  final String hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 7.0,
                offset: Offset(1, 10),
                color: Colors.grey.withOpacity(0.2)),
          ]),
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(icon, color: Colors.green),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: const BorderSide(width: 1.0, color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: const BorderSide(width: 1.0, color: Colors.black)),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
      ),
    );
  }
}
