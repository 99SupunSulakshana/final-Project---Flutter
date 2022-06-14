// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class SectionBreakers extends StatelessWidget {
  final String title;
  final String more;
  final void Function()? press;
  const SectionBreakers({
    Key? key,
    required this.press,
    required this.title,
    required this.more,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          title,
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            more,
            textAlign: TextAlign.right,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
