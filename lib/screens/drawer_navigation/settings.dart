// ignore_for_file: avoid_unnecessary_containers, unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/button.dart';
import '../../widgets/text_field.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () {},
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              height: 300.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.white, width: 1.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.5),
                        blurRadius: 20.0,
                        spreadRadius: 0.0,
                        offset: const Offset(5.0, 5.0)),
                  ]),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Mobitel",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dancingScript(
                          fontSize: 25.0, color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    customTextField(
                      title: 'Title',
                      // controller: _title,
                      hint: 'Add your Mobitel No:',
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange,
                        onPrimary: Colors.white,
                        shadowColor: Colors.greenAccent,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: const Size(100, 40), //////// HERE
                      ),
                      onPressed: () {},
                      child: const Text('Add your Mobitel No'),
                    ),
                  ]),
              //child: Mobitel_Activations(),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              height: 300.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.white, width: 1.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.5),
                        blurRadius: 20.0,
                        spreadRadius: 0.0,
                        offset: const Offset(5.0, 5.0)),
                  ]),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Dialog",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dancingScript(
                          fontSize: 25.0, color: Colors.red),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    customTextField(
                      title: 'Title',
                      // controller: _title,
                      hint: 'Add your Mobitel No:',
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange,
                        onPrimary: Colors.white,
                        shadowColor: Colors.greenAccent,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: const Size(100, 40), //////// HERE
                      ),
                      onPressed: () {},
                      child: const Text('Add your Dialog No:'),
                    ),
                  ]),
              //child: Mobitel_Activations(),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              height: 350.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.white, width: 1.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.5),
                        blurRadius: 20.0,
                        spreadRadius: 0.0,
                        offset: const Offset(5.0, 5.0)),
                  ]),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Addinonal Connections",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dancingScript(
                          fontSize: 25.0, color: Colors.red),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    customTextField(
                      title: 'Title',
                      // controller: _title,
                      hint: 'Add your additional Mobitel No:',
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange,
                        onPrimary: Colors.white,
                        shadowColor: Colors.greenAccent,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: const Size(100, 40), //////// HERE
                      ),
                      onPressed: () {},
                      child: const Text('Add your additional Mobitel '),
                    ),
                    customTextField(
                      title: 'Title',
                      // controller: _title,
                      hint: 'Add your additional ',
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange,
                        onPrimary: Colors.white,
                        shadowColor: Colors.greenAccent,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: const Size(100, 40), //////// HERE
                      ),
                      onPressed: () {},
                      child: const Text('Add your additional Dialog'),
                    ),
                  ]),

              //child: Mobitel_Activations(),
            ),
            Text(
              "Dialog Connections",
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.dancingScript(fontSize: 25.0, color: Colors.red),
            ),
            DataTable(columns: const <DataColumn>[
              DataColumn(
                  label: Text('NUMBER',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('STATUS',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              // DataColumn(
              //     label: Text('',
              //         style: TextStyle(
              //             fontSize: 18, fontWeight: FontWeight.bold))),
            ], rows: const <DataRow>[
              DataRow(cells: [
                DataCell(Text('0771327510')),
                DataCell(Text('Dual Sim 01 - Active')),
                // DataCell(Text('supunsulak20"gmail.com'))
              ]),
            ]),
            Text(
              "Mobitel Connections",
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.dancingScript(fontSize: 25.0, color: Colors.blue),
            ),
            DataTable(columns: const <DataColumn>[
              DataColumn(
                  label: Text('NUMBER',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('STATUS',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              // DataColumn(
              //     label: Text('',
              //         style: TextStyle(
              //             fontSize: 18, fontWeight: FontWeight.bold))),
            ], rows: const <DataRow>[
              DataRow(cells: [
                DataCell(Text('0771327510')),
                DataCell(Text('Dual Sim 01 - Active')),
                // DataCell(Text('supunsulak20"gmail.com'))
              ]),
            ]),
            Text(
              "Additional Add Connections",
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.dancingScript(fontSize: 25.0, color: Colors.blue),
            ),
            DataTable(columns: const <DataColumn>[
              DataColumn(
                  label: Text('NUMBER',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('STATUS',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              // DataColumn(
              //     label: Text('',
              //         style: TextStyle(
              //             fontSize: 18, fontWeight: FontWeight.bold))),
            ], rows: const <DataRow>[
              DataRow(cells: [
                DataCell(Text('0771327510')),
                DataCell(Text('Dual Sim 01 - Active')),
                // DataCell(Text('supunsulak20"gmail.com'))
              ]),
            ]),
          ],
        ),
      )),
    );
  }
}
