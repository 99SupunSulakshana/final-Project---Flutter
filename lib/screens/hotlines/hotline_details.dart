import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../model/Code.dart';

class HotLinesDetails extends StatelessWidget {
  final Code code;
  const HotLinesDetails({Key? key, required this.code}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("HotLine Code - ${code.id.toString()}"),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: Image(
                          image: AssetImage("assets/images/codes.png")
                      )),

                  Card(
                    margin: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.white,
                    elevation: 20,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                                enabled: false,
                                textAlign: TextAlign.center,
                                initialValue: code.id.toString(),
                                decoration: const InputDecoration(
                                  hintText: "Code ID",
                                )
                            ),
                          ),
                          Text(
                              'Code ID',
                              style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.red, fontWeight: FontWeight.bold)
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              enabled: false,
                              initialValue: code.code_title.toString(),
                              decoration: const InputDecoration(
                                hintText: "Code Title",
                              ),
                            ),
                          ),
                          Text(
                              'Code Title',
                              style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red, fontWeight: FontWeight.bold)
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              enabled: false,
                              minLines: 1,
                              maxLines: 10,
                              initialValue: code.description.toString(),
                              decoration: const InputDecoration(
                                hintText: "content",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Text(
                                'Code value',
                                style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.red, fontWeight: FontWeight.bold)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              enabled: false,
                              minLines: 1,
                              maxLines: 10,
                              initialValue: code.code.toString(),
                              decoration: const InputDecoration(
                                hintText: "value",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Text(
                                'Code created date & time',
                                style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.red, fontWeight: FontWeight.bold)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              enabled: false,
                              minLines: 1,
                              maxLines: 10,
                              initialValue: code.created_time.toString(),
                              decoration: const InputDecoration(
                                hintText: "Date & Time",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Text(
                                'Date & Time',
                                style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.red, fontWeight: FontWeight.bold)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      launch("tel: ${code.code}");
                    },
                    icon: const Icon(Icons.call, size: 18),
                    label: const Text('Connect with code'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
