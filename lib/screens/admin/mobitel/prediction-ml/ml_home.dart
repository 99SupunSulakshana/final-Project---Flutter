import 'package:final_project/screens/admin/mobitel/prediction-ml/churn/churnHome.dart';
import 'package:final_project/screens/admin/mobitel/prediction-ml/productivty/predictionHome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/routers.dart';

class MLHome extends StatefulWidget {
  const MLHome({Key? key}) : super(key: key);

  @override
  State<MLHome> createState() => _MLHomeState();
}

class _MLHomeState extends State<MLHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.deepPurple,
            title: Text(
              "Machine Learning",
              textDirection: TextDirection.ltr,
              style: GoogleFonts.poppins(fontSize: 20.0),
            ),
            centerTitle: true,
            actions: [
              // IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
              // IconButton(onPressed: () {
              //   PageNavigator(ctx: context)
              //       .nextPage(page: MLHome());
              // }, icon: const Icon(Icons.album)),
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
                      image: AssetImage("assets/images/robot.png"),
                      height: 220.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  TextButton(
                      onPressed:(){
                        PageNavigator(ctx: context)
                            .nextPage(page:  ChurnHome());
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check_circle, color: Colors.green,size: 20.0,),
                          Text(
                            "Check customers churn",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                                fontSize: 20.0, color: Colors.deepOrange),
                          ),
                        ],
                      )),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Image(
                      image: AssetImage("assets/images/brain.png"),
                      height: 220.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  TextButton(
                      onPressed:(){
                        PageNavigator(ctx: context)
                            .nextPage(page:  PredictionHomeMobitel());
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check_circle, color: Colors.green,size: 20.0,),
                          Text(
                            "Check productivity prediction",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.normal,
                                fontSize: 20.0, color: Colors.pink),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
