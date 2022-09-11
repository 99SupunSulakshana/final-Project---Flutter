// ignore_for_file: avoid_unnecessary_containers, non_constant_identifier_names

import 'package:final_project/widgets/dialog_popular_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../model/news.dart';

class MyActivation extends StatefulWidget {
  const MyActivation({Key? key}) : super(key: key);

  @override
  State<MyActivation> createState() => _MyActivationState();
}

class _MyActivationState extends State<MyActivation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My Activations"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_outlined),
            onPressed: () {},
          ),
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Mobitel",
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.poppins(fontSize: 25.0, color: Colors.blue),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                height: 500.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(color: Colors.white, width: 1.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(.5),
                          blurRadius: 20.0,
                          spreadRadius: 0.0,
                          offset: const Offset(5.0, 5.0)),
                    ]),
                child: Mobitel_Activations(),
              ),
              const SizedBox(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Divider(
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Dialog",
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.dancingScript(fontSize: 25.0, color: Colors.red),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                height: 500.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(color: Colors.white, width: 1.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(.5),
                          blurRadius: 20.0,
                          spreadRadius: 0.0,
                          offset: const Offset(5.0, 5.0)),
                    ]),
                child: Dialog_Activation(),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  ListView Dialog_Activation() {
    return ListView.builder(
      itemCount: popularList.length,
      itemBuilder: (context, index) {
        News news = popularList[index];
        return Card(
          child: ListTile(
            title: Row(
              children: <Widget>[
                Container(
                  height: 60.0,
                  width: 60.0,
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(.5),
                            blurRadius: 20.0,
                            spreadRadius: 0.0,
                            offset: const Offset(5.0, 5.0)),
                      ]),
                  child: Center(
                    child: Image(
                      image: NetworkImage(popularList[index].image),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "New What's App package",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                      ),
                      // Text(
                      //   "Monthly Package",
                      //   style: TextStyle(
                      //       fontSize: 13.0,
                      //       color: Colors.black54,
                      //       fontWeight: FontWeight.bold),
                      // ),
                      Text(
                        "2022-05-26 15:30PM",
                        style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                  iconSize: 15.0,
                  color: Colors.deepPurple,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DialogPopularDetails(news)));
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  ListView Mobitel_Activations() {
    return ListView.builder(
      itemCount: popularList.length,
      itemBuilder: (context, index) {
        News news = popularList[index];
        return Card(
          child: ListTile(
            title: Row(
              children: <Widget>[
                Container(
                  height: 60.0,
                  width: 60.0,
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(.5),
                            blurRadius: 20.0,
                            spreadRadius: 0.0,
                            offset: const Offset(5.0, 5.0)),
                      ]),
                  child: Center(
                    child: Image(
                      image: NetworkImage(popularList[index].image),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "New What's App package",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                      ),
                      // Text(
                      //   "Monthly Package",
                      //   style: TextStyle(
                      //       fontSize: 13.0,
                      //       color: Colors.black54,
                      //       fontWeight: FontWeight.bold),
                      // ),
                      Text(
                        "2022-05-26 15:30PM",
                        style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                  iconSize: 15.0,
                  color: Colors.deepPurple,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DialogPopularDetails(news)));
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
