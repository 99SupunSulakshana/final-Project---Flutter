// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDetails extends StatefulWidget {
  MyDetails({Key? key}) : super(key: key);

  @override
  State<MyDetails> createState() => _MyDetailsState();
}

class _MyDetailsState extends State<MyDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Deatails"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_outlined),
            onPressed: () {},
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(10.0),
                    height: 160.0,
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
                    child: const MobitelBalance()),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(10.0),
                    height: 160.0,
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
                    child: const DialogBalance()),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "My All Connection Details",
                  textAlign: TextAlign.center,
                  style:
                      GoogleFonts.raleway(fontSize: 20.0, color: Colors.black),
                ),
                Text(
                  "Main Networks",
                  textAlign: TextAlign.center,
                  style:
                      GoogleFonts.raleway(fontSize: 15.0, color: Colors.black),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Dialog",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dancingScript(
                      fontSize: 25.0, color: Colors.red),
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
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Mobitel",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dancingScript(
                      fontSize: 25.0, color: Colors.blue),
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
                    DataCell(Text('Dual Sim 02 - Active')),
                    // DataCell(Text('supunsulak20"gmail.com'))
                  ]),
                ]),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "My Additional Connections",
                  textAlign: TextAlign.center,
                  style:
                      GoogleFonts.raleway(fontSize: 20.0, color: Colors.black),
                ),
                Text(
                  "Mobitel",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dancingScript(
                      fontSize: 25.0, color: Colors.blue),
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
                    DataCell(Text('Dual Sim 02 - Active')),
                    // DataCell(Text('supunsulak20"gmail.com'))
                  ]),
                  DataRow(cells: [
                    DataCell(Text('0771327510')),
                    DataCell(Text('Dual Sim 02 - Active')),
                    // DataCell(Text('supunsulak20"gmail.com'))
                  ]),
                  DataRow(cells: [
                    DataCell(Text('0771327510')),
                    DataCell(Text('Dual Sim 02 - Active')),
                    // DataCell(Text('supunsulak20"gmail.com'))
                  ]),
                ]),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Dialog",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dancingScript(
                      fontSize: 25.0, color: Colors.red),
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
                    DataCell(Text('Dual Sim 02 - Active')),
                    // DataCell(Text('supunsulak20"gmail.com'))
                  ]),
                  DataRow(cells: [
                    DataCell(Text('0771327510')),
                    DataCell(Text('Dual Sim 02 - Active')),
                    // DataCell(Text('supunsulak20"gmail.com'))
                  ]),
                  DataRow(cells: [
                    DataCell(Text('0771327510')),
                    DataCell(Text('Dual Sim 02 - Active')),
                    // DataCell(Text('supunsulak20"gmail.com'))
                  ]),
                ]),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ));
  }
}

class MobitelBalance extends StatelessWidget {
  const MobitelBalance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          "Mobitel Balance",
          textAlign: TextAlign.center,
          style: GoogleFonts.raleway(fontSize: 20.0, color: Colors.white),
        ),
        Text(
          "071 1327510",
          textAlign: TextAlign.center,
          style: GoogleFonts.raleway(fontSize: 20.0, color: Colors.white),
        ),
        Text(
          "Rs. 125.00",
          textAlign: TextAlign.center,
          style: GoogleFonts.raleway(fontSize: 20.0, color: Colors.white),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
              child: const Text('Transactions'),
            ),
            const SizedBox(
              width: 10.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                onPrimary: Colors.white,
                shadowColor: Colors.greenAccent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize: const Size(100, 40), //////// HERE
              ),
              onPressed: () {},
              child: const Text('Reload'),
            )
          ],
        )
      ],
    );
  }
}

class DialogBalance extends StatelessWidget {
  const DialogBalance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          "Dialog Balance",
          textAlign: TextAlign.center,
          style: GoogleFonts.raleway(fontSize: 20.0, color: Colors.white),
        ),
        Text(
          "077 1327510",
          textAlign: TextAlign.center,
          style: GoogleFonts.raleway(fontSize: 20.0, color: Colors.white),
        ),
        Text(
          "Rs. 125.00",
          textAlign: TextAlign.center,
          style: GoogleFonts.raleway(fontSize: 20.0, color: Colors.white),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
              child: const Text('Transactions'),
            ),
            const SizedBox(
              width: 10.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                onPrimary: Colors.white,
                shadowColor: Colors.greenAccent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize: const Size(100, 40), //////// HERE
              ),
              onPressed: () {},
              child: const Text('Reload'),
            )
          ],
        )
      ],
    );
  }
}
