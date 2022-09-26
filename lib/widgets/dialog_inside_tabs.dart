// ignore_for_file: avoid_unnecessary_containers, avoid_print

import 'package:final_project/widgets/dialog_recommandationlist.dart';
import 'package:final_project/widgets/dialog_trendinglist.dart';
import 'package:final_project/widgets/expandedList.dart';
import 'package:final_project/widgets/dialog_popularlist.dart';
import 'package:flutter/material.dart';

class SubTabs extends StatefulWidget {
  const SubTabs({Key? key}) : super(key: key);

  @override
  State<SubTabs> createState() => _SubTabsState();
}

class _SubTabsState extends State<SubTabs> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Container(
              height: 35.0,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TabBar(
                  indicator: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(10.0)),
                  tabs: const [
                    Tab(
                      text: "Popular",
                    ),
                    Tab(text: "Trending"),

                  ]),
            ),
            SizedBox(
              height: size.height * .80,
              child: TabBarView(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SearchList(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: DialogTrending(),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Container(
                //     decoration: BoxDecoration(
                //         color: Colors.black26,
                //         borderRadius: BorderRadius.circular(10.0)),
                //     child: const Padding(
                //       padding: EdgeInsets.all(8.0),
                //       child: DialogRecommandations(),
                //     ),
                //   ),
                // )
              ]),
            )
          ],
        ),
      )

          // TabBarView(
          //   children: [Icon(Icons.apps), Icon(Icons.movie), Icon(Icons.games)]),
          ),
    );
  }
}
