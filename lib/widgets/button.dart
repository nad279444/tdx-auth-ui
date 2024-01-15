import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      required this.buttonColor,
      required this.buttonName,
      required this.height,
      required this.textSize,
      required this.width,
      required this.onPressed});

  final double textSize;
  final Color buttonColor;
  final String buttonName;
  final double width;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: buttonColor,
        ),
        child: InkWell(
          onTap: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  buttonName,
                  style: TextStyle(fontSize: textSize, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child:
                    Icon(Icons.arrow_forward, size: 25.0, color: Colors.white),
              ),
            ],
          ),
        ));
  }
}
