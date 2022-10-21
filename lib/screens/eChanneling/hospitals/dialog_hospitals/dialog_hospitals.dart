import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DialogHospitals extends StatefulWidget {
  const DialogHospitals({Key? key}) : super(key: key);

  @override
  State<DialogHospitals> createState() => _DialogHospitalsState();
}

class _DialogHospitalsState extends State<DialogHospitals> {
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
                    "Registered hospitals with Dialog",
                    style: GoogleFonts.aBeeZee(fontSize: 20.0, fontWeight:FontWeight.normal, color: Colors.red),
                  ),
                ]
            ))
    );
  }
}
