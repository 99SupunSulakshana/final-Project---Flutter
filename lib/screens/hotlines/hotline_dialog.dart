// ignore_for_file: avoid_unnecessary_containers, deprecated_member_use, unused_local_variable

import 'package:final_project/model/news.dart';
import 'package:flutter/material.dart';

class DialogHot extends StatefulWidget {
  const DialogHot({
    Key? key,
  }) : super(key: key);
  //final News package;
  @override
  State<DialogHot> createState() => _DialogHotState();
}

class _DialogHotState extends State<DialogHot> {

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
                    child: const Center(
                        // child: Image(
                        //   image: NetworkImage(popularList[index].image),
                        // ),
                        //child: Text('${popularList[index]}'),
                        ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          "Terms and Conditions 01",
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
