import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DialogAbout extends StatefulWidget {
  const DialogAbout({Key? key}) : super(key: key);

  @override
  State<DialogAbout> createState() => _DialogAboutState();
}

class _DialogAboutState extends State<DialogAbout> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                "Dialog Network",
                style: GoogleFonts.pacifico(fontSize: 20.0),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                height: 160.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(color: Colors.white, width: 1.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(.5),
                          blurRadius: 20.0,
                          spreadRadius: 0.0,
                          offset: const Offset(5.0, 5.0)),
                    ]),
                child: const Image(
                  height: 150.0,
                  //color: Colors.white,
                  width: double.infinity,
                  image: AssetImage("assets/images/png02.png"),
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "I am Student of University ICBT Campus Nugegoda. Degree offered by Cardiff Metropolitan University, Cardiff-London.",
                textAlign: TextAlign.center,
                style: GoogleFonts.raleway(fontSize: 20.0),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Dialog Helps & Contact",
                style: GoogleFonts.pacifico(fontSize: 20.0),
              ),
              DataTable(columns: const <DataColumn>[
                DataColumn(
                    label: Text('CONTACT',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('INFO',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
              ], rows: const <DataRow>[
                DataRow(cells: [
                  DataCell(Text('Email')),
                  DataCell(Text('supunsulak20"gmail.com')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Name')),
                  DataCell(Text('Supun Sulakshana')),
                ]),
              ]),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Good Luck!",
                style: GoogleFonts.pacifico(fontSize: 20.0),
              ),
            ],
          ),
        ));
  }
}
