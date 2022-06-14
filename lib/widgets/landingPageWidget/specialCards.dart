// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SpecialServices extends StatelessWidget {
  final String title;
  final String subtitle;

  const SpecialServices({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 5.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              subtitle,
              style:
                  const TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
            )
          ]),
    );
  }
}
