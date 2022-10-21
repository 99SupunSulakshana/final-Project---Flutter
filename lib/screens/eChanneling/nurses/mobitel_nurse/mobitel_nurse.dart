import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobitelNurse extends StatefulWidget {
  const MobitelNurse({Key? key}) : super(key: key);

  @override
  State<MobitelNurse> createState() => _MobitelNurseState();
}

class _MobitelNurseState extends State<MobitelNurse> {
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
                    "Registered Attendants with Mobitel",
                    style: GoogleFonts.aBeeZee(fontSize: 20.0, fontWeight:FontWeight.normal, color: Colors.lightBlueAccent),
                  ),
                ]
            ))
    );
  }
}
