import 'package:final_project/screens/admin/mobitel/prediction-ml/productivty/introPrediction.dart';
import 'package:final_project/screens/admin/mobitel/prediction-ml/productivty/predictionHelp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../../../utils/routers.dart';

class PredictionHomeMobitel extends StatelessWidget {
  const PredictionHomeMobitel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            title: Text(
              "Productivity Prediction",
              textDirection: TextDirection.ltr,
              style: GoogleFonts.poppins(fontSize: 20.0),
            ),
            actions: [
              IconButton(onPressed: () {
                PageNavigator(ctx: context)
                    .nextPage(page:  PredictionHelp());
              }, icon: const Icon(Icons.help_outline_sharp)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.logout_outlined)),
            ],
            elevation: 0 ,
          ),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Image(
                    image: AssetImage("assets/images/ml_home.png"),
                    height: 220.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                           ListTile(
                            leading: const Icon(Icons.album, color: Colors.red,),
                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Why productivity important for us?',
                                textDirection: TextDirection.ltr,
                                style: GoogleFonts.poppins(
                                    fontSize: 15.0,
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold),),
                            ),
                            subtitle: Text("Measuring your productivity will help you feel less stress about the things you didn't get done because you're showing yourself you're making progress. It will also allow you to set better goals and know when it's time to get some new update.",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.poppins(
                                  fontSize: 15.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(Icons.check_circle, color: Colors.red,),
                              TextButton(
                                child: Text('START TO CHECK PRODUCTIVITY',
                                  textDirection: TextDirection.ltr,
                                  style: GoogleFonts.poppins(
                                      fontSize: 15.0,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {
                                  PageNavigator(ctx: context)
                                      .nextPage(page:  IntroPrediction());
                                },
                              ) ,
                              const SizedBox(width: 8),
                              // TextButton(
                              //   child: const Text(''),
                              //   onPressed: () {/* ... */},
                              // ),
                              const SizedBox(width: 1),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
