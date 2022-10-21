// ignore_for_file: file_names

import 'package:final_project/screens/drawer_navigation/about_us_application.dart';
import 'package:final_project/screens/drawer_navigation/about_us_dialog.dart';
import 'package:final_project/screens/drawer_navigation/about_us_mobitel.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("About Us"),
          centerTitle: true,
        ),
        body: Stack(children: <Widget>[
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("assets/images/png01.png"))),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(
                  height: 150.0,
                ),
                // Container(
                //   margin: const EdgeInsets.only(bottom: 20.0),
                //   padding: const EdgeInsets.symmetric(
                //       horizontal: 30, vertical: 3.0),
                //   decoration: BoxDecoration(
                //       color: Colors.black12,
                //       boxShadow: const [
                //         BoxShadow(
                //           offset: Offset(0, 17),
                //           blurRadius: 17.0,
                //           spreadRadius: -23,
                //           color: Colors.grey,
                //         ),
                //       ],
                //       borderRadius: BorderRadius.circular(30.0)),
                //   child: const TextField(
                //     decoration: InputDecoration(
                //         hintText: "Search Here",
                //         icon: Icon(Icons.search),
                //         border: InputBorder.none),
                //   ),
                // ),
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
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(8)),
                        tabs: const [
                          Tab(
                            text: "Dialog",
                          ),
                          Tab(
                            text: "Mobitel",
                          ),
                          // Tab(
                          //   text: "Application",
                          // )
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
                        child: const DialogAbout(),
                      ),
                    ),
                    Container(
                      height: size.height * .90,
                      width: 100,
                      margin: const EdgeInsets.only(top: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const MobitelAbout(),
                    ),
                    // Container(
                    //   height: size.height * .90,
                    //   width: 100,
                    //   margin: const EdgeInsets.only(top: 10.0),
                    //   decoration: BoxDecoration(
                    //       color: Colors.black12,
                    //       borderRadius: BorderRadius.circular(10.0)),
                    //   child: const ApplicationAbout(),
                    // ),
                  ]),
                )
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
