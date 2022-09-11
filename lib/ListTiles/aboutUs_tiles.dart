import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/AboutUs.dart';
import '../provider/aboutusdata.dart';

class AboutUsTile extends StatelessWidget {
  final AboutUs aboutUs;
  final AboutUsData aboutUsData;

  const AboutUsTile( {required this.aboutUs, required this.aboutUsData,Key? key})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
          width: 40.0,
          height: 40.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.deepPurple
          ),
        ),
        title: Text(
          aboutUs.provider,
          style: const TextStyle(fontSize: 10.0),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete_forever),
          onPressed: () {  },
        ),
      ),
    );
  }
}
