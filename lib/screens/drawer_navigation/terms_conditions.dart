// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:final_project/screens/drawer_navigation/dialog_terms.dart';
import 'package:final_project/screens/drawer_navigation/mobitel_terms.dart';
import 'package:flutter/material.dart';

class Terms extends StatefulWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Terms And Conditions"),
          centerTitle: true,
          actions: [
            // IconButton(onPressed: (){}, icon: const Icon(Icons.search))
          ],
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
                          )
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
                        child: const DialogTerms(),
                      ),
                    ),
                    Container(
                      height: size.height * .90,
                      width: 100,
                      margin: const EdgeInsets.only(top: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const MobitelTerms(),
                    )
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
