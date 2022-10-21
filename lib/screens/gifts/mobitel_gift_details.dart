import 'package:final_project/model/weeklyPackges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MobitelGiftDetails extends StatelessWidget {
  final WeeklyPackages weeklyPackages;
  const MobitelGiftDetails(this.weeklyPackages, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Weekly gifts - ${weeklyPackages.id.toString()}"),
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
                      width: 300,
                      child: Image(
                          image: AssetImage("assets/images/mobitel.jpg")
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
                                initialValue: weeklyPackages.id.toString(),
                                decoration: const InputDecoration(
                                  hintText: "Gift ID",
                                )
                            ),
                          ),
                          Text(
                              'Gift ID',
                              style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.red, fontWeight: FontWeight.bold)
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              enabled: false,
                              initialValue: weeklyPackages.package_title.toString(),
                              decoration: const InputDecoration(
                                hintText: "Gift Title",
                              ),
                            ),
                          ),
                          Text(
                              'Gift Title',
                              style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red, fontWeight: FontWeight.bold)
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              enabled: false,
                              minLines: 1,
                              maxLines: 10,
                              initialValue: weeklyPackages.description.toString(),
                              decoration: const InputDecoration(
                                hintText: "content",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Text(
                                'Gift Content',
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
                              initialValue: weeklyPackages.cost.toString(),
                              decoration: const InputDecoration(
                                hintText: "value",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Text(
                                'Gift tax/cost',
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
                              initialValue: weeklyPackages.created_time.toString(),
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
                      launch("sms: ${weeklyPackages.cost}");
                    },
                    icon: const Icon(Icons.sms, size: 18),
                    label: const Text('Get this gift'),
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
