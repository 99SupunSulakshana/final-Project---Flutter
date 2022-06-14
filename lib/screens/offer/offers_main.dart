import 'package:final_project/screens/drawer_navigation/dialog_terms.dart';
import 'package:final_project/screens/drawer_navigation/mobitel_terms.dart';
import 'package:final_project/screens/hotlines/hotline_dialog.dart';
import 'package:final_project/screens/hotlines/hotline_mobitel.dart';
import 'package:final_project/screens/loan_services/loan_dialog.dart';
import 'package:final_project/screens/loan_services/loan_mobitel.dart';
import 'package:final_project/screens/offer/dialog_offers.dart';
import 'package:final_project/screens/offer/mobitel_offers.dart';
import 'package:flutter/material.dart';

class Offers extends StatefulWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Offers Services"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_outlined),
            onPressed: () {},
          ),
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
                        child: const DialogOffers(),
                      ),
                    ),
                    Container(
                      height: size.height * .90,
                      width: 100,
                      margin: const EdgeInsets.only(top: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const MobitelOffers(),
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
