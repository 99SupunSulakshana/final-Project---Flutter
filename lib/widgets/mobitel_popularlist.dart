// ignore_for_file: avoid_unnecessary_containers, deprecated_member_use

import 'package:final_project/model/news.dart';
import 'package:final_project/widgets/mobitel_popular_details.dart';
import 'package:flutter/material.dart';

class MobitelPopular extends StatefulWidget {
  const MobitelPopular({Key? key}) : super(key: key);

  @override
  State<MobitelPopular> createState() => _MobitelPopularState();
}

class _MobitelPopularState extends State<MobitelPopular> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: popularList.length,
        itemBuilder: (context, index) {
          News news = popularList[index];
          return Card(
            child: ListTile(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: const Text(
                            'WhatsApp Package',
                            textAlign: TextAlign.justify,
                          ),
                          content: const Text(
                              'The 2022 Indian Premier League, also known as IPL 15 or for sponsorship reasons, Tata IPL 2022, is the fifteenth season of the Indian Premier League (IPL)'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('OK')),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('CANCEL')),
                          ],
                        ));
              },
              title: Row(
                children: <Widget>[
                  Container(
                    height: 60.0,
                    width: 60.0,
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(7.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.5),
                              blurRadius: 10.0,
                              spreadRadius: 0.0,
                              offset: const Offset(5.0, 5.0)),
                        ]),
                    child: const Center(
                      child: Image(
                        image: AssetImage('assets/images/mobitel.jpg'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          "Mobitel",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "Monthly Package",
                          style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
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
                              builder: (context) =>
                                  MobitelPopularDetails(news)));
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
