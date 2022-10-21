// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors_in_immutables

import 'package:final_project/screens/drawer_navigation/setting/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/routers.dart';
import 'mobitel_data_balance.dart';
import 'my_details_widgets/dialog_credit.dart';
import 'my_details_widgets/dialog_data.dart';
import 'my_details_widgets/dialog_registration.dart';
import 'my_details_widgets/mobitel_credit.dart';
import 'my_details_widgets/mobitel_data.dart';
import 'my_details_widgets/mobitel_registration.dart';

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
          title: const Text("My Details"),
          centerTitle: true,
          actions: [],
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20.0),
                SizedBox(
                  child: Text(
                    "Sim Cards Balance",
                    textAlign: TextAlign.center,
                    style:
                    GoogleFonts.poppins(fontSize: 20.0, color: Colors.black),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Container(
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(10.0),
                    height: 180.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.pink,
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
                    height: 170.0,
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
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Registered Details with Mobitel Network",
                    textAlign: TextAlign.center,
                    style:
                    GoogleFonts.poppins(fontSize: 20.0, color: Colors.blue),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Divider(
                    color: Colors.blue,
                  ),
                ),
                Container(
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(10.0),
                    height: 640.0,
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
                    child: const MobitelSignUpDetails()),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Registered Details with Dialog Network",
                    textAlign: TextAlign.center,
                    style:
                    GoogleFonts.poppins(fontSize: 20.0, color: Colors.red),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Divider(
                    color: Colors.red,
                  ),
                ),
                Container(
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(10.0),
                    height: 640.0,
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
                    child: const DialogSignUp()),
              ],
            ),
          ),
        ));
  }
}










