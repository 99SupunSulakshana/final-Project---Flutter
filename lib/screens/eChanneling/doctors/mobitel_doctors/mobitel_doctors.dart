import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorsMobitel extends StatefulWidget {
  const DoctorsMobitel({Key? key}) : super(key: key);

  @override
  State<DoctorsMobitel> createState() => _DoctorsMobitelState();
}

class _DoctorsMobitelState extends State<DoctorsMobitel> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5.0),
        child: SingleChildScrollView(
            child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Registered doctors with Mobitel",
                    style: GoogleFonts.aBeeZee(fontSize: 20.0, fontWeight:FontWeight.normal, color: Colors.lightBlue),
                  ),
                ]
            ))
    );
  }
}
