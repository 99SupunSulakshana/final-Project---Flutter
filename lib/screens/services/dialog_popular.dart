// ignore_for_file: avoid_unnecessary_containers, deprecated_member_use

import 'package:final_project/model/news.dart';
import 'package:final_project/utils/routers.dart';
import 'package:final_project/widgets/dialog_popular_details_screen.dart';
import 'package:flutter/material.dart';

class DialogPoularList extends StatefulWidget {
  const DialogPoularList({Key? key}) : super(key: key);

  @override
  State<DialogPoularList> createState() => _DialogPoularListState();
}

class _DialogPoularListState extends State<DialogPoularList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
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
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) =>
                      //             DialogPopularDetails(news))
                      //             );
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: const Text(
                                  'Term & Condition 01',
                                  textAlign: TextAlign.justify,
                                ),
                                content: SingleChildScrollView(
                                    child: Text(popularList[index].content)),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('OK')),
                                  // TextButton(
                                  //     onPressed: () {
                                  //       Navigator.pop(context);
                                  //     },
                                  //     child: const Text('CANCEL')),
                                ],
                              ));
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}