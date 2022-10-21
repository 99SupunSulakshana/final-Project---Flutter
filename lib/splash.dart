// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:final_project/landing_page.dart';
import 'package:final_project/landing_test.dart';
import 'package:final_project/utils/routers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:wave/config.dart';
//import 'package:wave/wave.dart';
import 'provider/Shared_preferences/shared_preferencesProvider.dart';
import 'screens/authentication/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Image(
                image: AssetImage('assets/images/png02.png'),
                fit: BoxFit.cover,
              ),
              Text(
                "All in One",
                textAlign: TextAlign.center,
                style: GoogleFonts.dancingScript(
                    fontSize: 25.0, color: Colors.deepPurple),
              ),
              Text(
                "Created By Supun Sulakshana",
                textAlign: TextAlign.center,
                style: GoogleFonts.dancingScript(
                    fontSize: 20.0, color: Colors.deepPurple),
              ),
              Text(
                "BSc (Hons) Software Engineering",
                textAlign: TextAlign.center,
                style: GoogleFonts.dancingScript(
                    fontSize: 20.0, color: Colors.deepPurple),
              ),
            ],
          ),

          // child: Image.asset('assets/images/png02.png',
          // fit: BoxFit.cover,
          // ),

          // child: WaveWidget(
          //   config:CustomConfig(

          //     gradients: [
          //       [Colors.red,Colors.pinkAccent],
          //       [Colors.redAccent,Colors.deepOrange],
          //       [Colors.orange, Colors.yellowAccent],
          //       [Colors.yellowAccent, Colors.pink]
          //     ],

          //     gradientBegin: Alignment.centerRight,
          //     gradientEnd: Alignment.centerLeft,
          //     durations: [3500,19440,10800,6000],
          //     heightPercentages: [0.20,0.23,0.25,0.30]),
          //     size: const Size(double.infinity, double.infinity)),
        ),
      ),
    );
  }

  void navigate() {
    Future.delayed(const Duration(seconds: 10), () {
      SharedDataProvider().getToken().then((value) {
        if (value == '') {
          PageNavigator(ctx: context).nextPageOnly(page: const LoginPage());
        } else {
          PageNavigator(ctx: context).nextPageOnly(page: const LandingPage());
        }
      });
      //PageNavigator(ctx: context).nextPageOnly(page: const LoginPage());
    });
  }
}
