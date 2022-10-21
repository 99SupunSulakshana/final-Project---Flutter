import 'package:final_project/screens/drawer_navigation/dialog_terms.dart';
import 'package:final_project/screens/drawer_navigation/mobitel_terms.dart';
import 'package:final_project/screens/hotlines/hotline_dialog.dart';
import 'package:final_project/screens/hotlines/hotline_mobitel.dart';
import 'package:flutter/material.dart';

class HotLines extends StatefulWidget {
  const HotLines({Key? key}) : super(key: key);

  @override
  State<HotLines> createState() => _HotLinesState();
}

class _HotLinesState extends State<HotLines> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Hot Connections Numbers"),

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
                    image: AssetImage("assets/images/codes.png"))),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(
                  height: 150.0,
                ),
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
                        width: double.infinity,
                        margin: const EdgeInsets.only(top: 10.0),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10.0)),
                        //child: const HomeView()
                        child: const DialogHot(),
                      ),
                    ),
                    Container(
                      height: size.height * .90,
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const MobitelHot(),
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
