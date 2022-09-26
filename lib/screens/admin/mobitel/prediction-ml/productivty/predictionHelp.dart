import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PredictionHelp extends StatefulWidget {
  const PredictionHelp({Key? key}) : super(key: key);

  @override
  State<PredictionHelp> createState() => _PredictionHelpState();
}

class _PredictionHelpState extends State<PredictionHelp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            title: Text(
              "Help",
              textDirection: TextDirection.ltr,
              style: GoogleFonts.poppins(fontSize: 20.0),
            ),
            actions: [
          //    IconButton(onPressed: () {}, icon: const Icon(Icons.help_outline_sharp)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.logout_outlined)),
            ],
            elevation: 0 ,
          ),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 140,
                      decoration: const BoxDecoration(
                          color: Colors.limeAccent,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: SingleChildScrollView(
                           child: Column(
                            children: <Widget>[
                              helpToken(Icons.album_outlined, "About Portion of the month",
                                  "A portion of the month. A month was divided into four quarters.( 1st quarter = 1, 2nd quarter = 2, 3rd quarter = 3, 4th quarter = 4)"
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 140,
                      decoration: const BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              helpToken(Icons.album_outlined, "Day of the Week",
                                  "Day of the Week. (Monday - 1, Tuesday - 2, Wednesday - 3, Thursday - 4, Friday - 5, Saturday - 6, Sunday - 7)"
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 140,
                      decoration: const BoxDecoration(
                          color: Colors.lightGreenAccent,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              helpToken(Icons.album_outlined, "Target productivity rate of month",
                                  "Targeted productivity set by the Authority for each package or service for each day."
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 140,
                      decoration: const BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              helpToken(Icons.album_outlined, "Standard Minute Value",
                                  "Standard Minute Value is the allocated time for a productivity checking time."
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 140,
                      decoration: const BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              helpToken(Icons.album_outlined, "Package/ Service progress",
                                  "package/ service in progress is including the number of using packages, services, remove packages, and service calculations."
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 140,
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              helpToken(Icons.album_outlined, "Overall used time (minutes)",
                                  "Represents the amount of overtime by each package in minutes."
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 140,
                      decoration: const BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              helpToken(Icons.album_outlined, "Represents the amount of incentive",
                                  "Represents the amount of packages/services incentive that enables or motivates a particular course of action."
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 140,
                      decoration: const BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              helpToken(Icons.album_outlined, "Package interrupted time(minutes)",
                                  "The amount of time when the package/service was interrupted due to several reasons."
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 140,
                      decoration: const BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              helpToken(Icons.album_outlined, "Package interrupted users",
                                  "The amount of users when the package/service was interrupted due to several reasons."
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 140,
                      decoration: const BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              helpToken(Icons.album_outlined, "No of updates",
                                  "Implemented the last no of updates."
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    ));
  }

  Widget helpToken(IconData icon, String title, String subTitle){
    return ListTile(
        leading: const Icon(Icons.album, color: Colors.red,),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title,
            textDirection: TextDirection.ltr,
            style: GoogleFonts.poppins(
                fontSize: 15.0,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold),),
        ),
        subtitle: Text(subTitle,
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.justify,
          style: GoogleFonts.poppins(
              fontSize: 15.0,
              color: Colors.black,
              fontWeight: FontWeight.normal),
        ),
    );
  }
}
