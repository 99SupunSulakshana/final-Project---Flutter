import 'package:final_project/screens/admin/mobitel/prediction-ml/ml_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../utils/routers.dart';
import '../productivty/predictionHome.dart';

class ChurnNextLevel extends StatefulWidget {
  const ChurnNextLevel({Key? key}) : super(key: key);

  @override
  State<ChurnNextLevel> createState() => _ChurnNextLevelState();
}

class _ChurnNextLevelState extends State<ChurnNextLevel> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white60,
            title: Text(
              "Administrator's operations",
              textDirection: TextDirection.ltr,
              style: GoogleFonts.poppins(fontSize: 20.0),
            ),
            centerTitle: true,
            actions: [
              IconButton(onPressed: () {
                PageNavigator(ctx: context)
                    .nextPage(page:  MLHome());
              }, icon: const Icon(Icons.home)),
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
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: const Icon(Icons.album, color: Colors.red,),
                            title: Text('Your customer churn value is 0?',
                              textDirection: TextDirection.ltr,
                              style: GoogleFonts.poppins(
                                  fontSize: 15.0,
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold),),
                            subtitle: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("The customer's churn value of your package or services is sitting in good condition.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.poppins(
                                    fontSize: 15.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.end,
                          //   children: [
                          //     const Icon(Icons.mail_sharp, color: Colors.red,),
                          //     TextButton(
                          //       child: Text('SEND TO EMAIL',
                          //         textDirection: TextDirection.ltr,
                          //         style: GoogleFonts.poppins(
                          //             fontSize: 15.0,
                          //             color: Colors.green,
                          //             fontWeight: FontWeight.bold),
                          //       ),
                          //       onPressed: () {
                          //         PageNavigator(ctx: context)
                          //             .nextPage(page:  IntroPrediction());
                          //       },
                          //     ) ,
                          //     const SizedBox(width: 8),
                          //     // TextButton(
                          //     //   child: const Text(''),
                          //     //   onPressed: () {/* ... */},
                          //     // ),
                          //     const SizedBox(width: 1),
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: const Icon(Icons.album, color: Colors.red,),
                            title: Text('Your customer churn value is 1?',
                              textDirection: TextDirection.ltr,
                              style: GoogleFonts.poppins(
                                  fontSize: 15.0,
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold),),
                            subtitle: Text("The customer's churn value of your package or services is sitting in danger or warning condition. Therefore, immediately inform about that to your head office.",
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
                              const Icon(Icons.mail, color: Colors.red,),
                              TextButton(
                                child: Text('SEND TO EMAIL',
                                  textDirection: TextDirection.ltr,
                                  style: GoogleFonts.poppins(
                                      fontSize: 15.0,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {
                                  launch('mailto:supunsulak20@gmail.com?subject=About Package/Service productivity&body= Dear Sir');
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
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
