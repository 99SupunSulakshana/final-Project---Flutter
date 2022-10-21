// ignore_for_file: avoid_unnecessary_containers, unused_import

import 'package:final_project/screens/drawer_navigation/setting/dialog_settings.dart';
import 'package:final_project/screens/drawer_navigation/setting/mobitel-settings.dart';
import 'package:final_project/screens/services/services_mobitel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/routers.dart';
import '../../../widgets/button.dart';
import '../../../widgets/text_field.dart';
import '../my_activations/dialog_prepaid.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool val = true;
  String dropdownvalue = 'Item 1';

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  onChangeFunction(bool newValue1){
    setState((){
      val = newValue1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
       centerTitle: true,
       // actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                height: 200.0,
                width: double.infinity,
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
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Mobitel",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            fontSize: 35.0, color: Colors.blue),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          onPrimary: Colors.white,
                          shadowColor: Colors.greenAccent,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                          minimumSize: const Size(100, 40), //////// HERE
                        ),
                        onPressed: () {
                          PageNavigator(ctx: context).nextPage(page: MobitelSettings());
                        },
                        child: const Text('Fill the Mobitel e - services registration'),
                      ),

                    ]),
                //child: Mobitel_Activations(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                height: 200.0,
                width: double.infinity,
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
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Dialog",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            fontSize: 35.0, color: Colors.red),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          onPrimary: Colors.white,
                          shadowColor: Colors.greenAccent,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                          minimumSize: const Size(100, 40), //////// HERE
                        ),
                        onPressed: () {
                          PageNavigator(ctx: context).nextPage(page: DialogSettings());
                        },
                        child: const Text('Fill the Dialog e - services registration'),
                      ),
                    ]),
                //child: Mobitel_Activations(),
              ),
            ),

            Text(
              "Dialog Connections",
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.poppins(fontSize: 25.0, color: Colors.red),
            ),
            DataTable(columns: const <DataColumn>[
              DataColumn(
                  label: Text('NUMBER',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('SIM',
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
                DataCell(Text('Dual Sim 01')),
                DataCell(Text('Active', style: TextStyle(color: Colors.red),)),
                // DataCell(Text('supunsulak20"gmail.com'))
              ]),
            ]),
            Text(
              "Mobitel Connections",
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.poppins(fontSize: 25.0, color: Colors.blue),
            ),
            DataTable(columns: const <DataColumn>[
              DataColumn(
                  label: Text('NUMBER',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('SIM',
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
                DataCell(Text('Dual Sim 02')),
                DataCell(Text('Active', style: TextStyle(color: Colors.red),))
                // DataCell(Text('supunsulak20"gmail.com'))
              ]),
            ]),
            const SizedBox(
              height: 20.0,
            )
          ],
        ),
      )),
    );
  }

  Widget customSwitch(String text, bool val, Function onChangeMethod){
    return Padding (
      padding: const EdgeInsets.only(top: 0.0, left: 16.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: GoogleFonts.poppins(fontSize: 20.0, color: Colors.black),
          ),
          const Spacer(),
          Switch(
              activeColor: Colors.green,
              value:val,
              onChanged: (newValue){
                   onChangeMethod(newValue);
              })
        ],
      ),
    );
  }
}
