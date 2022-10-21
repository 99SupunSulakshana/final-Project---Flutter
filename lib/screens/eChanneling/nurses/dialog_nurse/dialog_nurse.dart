import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DialogNurse extends StatefulWidget {
  const DialogNurse({Key? key}) : super(key: key);

  @override
  State<DialogNurse> createState() => _DialogNurseState();
}

class _DialogNurseState extends State<DialogNurse> {
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
                    "Registered Attendants with Dialog",
                    style: GoogleFonts.aBeeZee(fontSize: 20.0, fontWeight:FontWeight.normal, color: Colors.red),
                  ),
                ]
            ))
    );
  }
}
