import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../drawer_navigation/about_us_dialog.dart';
import '../../drawer_navigation/about_us_mobitel.dart';
import 'dialog_doctors/dialog_doctors.dart';
import 'mobitel_doctors/mobitel_doctors.dart';

class Doctors_main extends StatefulWidget {
  const Doctors_main({Key? key}) : super(key: key);

  @override
  State<Doctors_main> createState() => _Doctors_mainState();
}

class _Doctors_mainState extends State<Doctors_main> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Doctors"),
            centerTitle: true,
          ),
          body: Stack(children: <Widget>[
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 17.0,
                          spreadRadius: -23,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TabBar(
                          indicator: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(8)),
                          tabs: const [
                            Tab(
                              text: "Dialog",
                            ),
                            Tab(
                              text: "Mobitel",
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: size.height * .90,
                    child: TabBarView(children: [
                      SingleChildScrollView(
                        child: Container(
                          height: size.height * .90,
                          width: 100,
                          margin: const EdgeInsets.only(top: 10.0),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10.0)),
                          //child: const HomeView()
                          child: const DialogDoctors(),
                        ),
                      ),
                      Container(
                        height: size.height * .90,
                        width: 100,
                        margin: const EdgeInsets.only(top: 10.0),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: const DoctorsMobitel(),
                      ),
                    ]),
                  )
                ]),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
