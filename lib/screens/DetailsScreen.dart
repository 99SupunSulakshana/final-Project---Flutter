// ignore_for_file: unnecessary_new, file_names, avoid_unnecessary_containers, unused_import, unused_field

import 'package:final_project/model/Customer.dart';
import 'package:final_project/styles/colors.dart';
import 'package:final_project/widgets/dialog_inside_tabs.dart';
import 'package:final_project/widgets/mobitel_subtabs.dart';
import 'package:final_project/widgets/primary_card.dart';
import 'package:final_project/widgets/productTabs.dart';
import 'package:final_project/widgets/secondary_card.dart';
import 'package:flutter/material.dart';

import '../widgets/search_user.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  TextEditingController controller = new TextEditingController();
  late TabController _tabController;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.deepPurple,
            title: const Text("New Packages"),
            centerTitle: true,
            elevation: 0,
            actions: [
              //IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
              IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: SearchUser());
                },
                icon: const Icon(Icons.search_sharp),
              ),
              PopupMenuButton(
                  itemBuilder: (context) => [
                        const PopupMenuItem(
                          child: Text("Logout"),
                          value: 1,
                        ),
                        const PopupMenuItem(
                          child: Text("Home Screen"),
                          value: 2,
                        )
                      ]),
            ],
          ),
          body: Stack(
            children: <Widget>[
              Container(
                height: size.height * .50,
                decoration: const BoxDecoration(
                    color: Colors.white70,
                    image: DecorationImage(
                      image: AssetImage("assets/images/png01.png"),
                      fit: BoxFit.fitWidth,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
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
                            width: 100,
                            margin: const EdgeInsets.only(top: 10.0),
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(10.0)),
                            //child: const HomeView()
                            child: const SubTabs(),
                          ),
                        ),
                        Container(
                          height: size.height * .90,
                          width: 100,
                          margin: const EdgeInsets.only(top: 10.0),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: const MobitelSubTabs(),
                        )
                      ]),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
