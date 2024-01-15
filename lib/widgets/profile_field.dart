import 'package:flutter/material.dart';

class ProfileField extends StatelessWidget {
  const ProfileField({super.key, required this.appIcon, required this.text});

  final Icon appIcon;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      padding: EdgeInsets.only(left: 10.0, top: 5.0, bottom: 5.0),
      child: Row(
        children: [appIcon, SizedBox(width: 10), text],
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 5),
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 1.0)
        ],
        color: Colors.white,
      ),
    );
  }
}
