import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/news.dart';
import '../../../widgets/dialog_popular_details_screen.dart';

class DialogPostPaidScreen extends StatefulWidget {
  const DialogPostPaidScreen({Key? key}) : super(key: key);

  @override
  State<DialogPostPaidScreen> createState() => _DialogPostPaidScreenState();
}

class _DialogPostPaidScreenState extends State<DialogPostPaidScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Dialog postpaid activations"),
            centerTitle: true,
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
              ]),
            ),
          )
      ),
    );
  }
}


ListView Dialog_Postpaid() {
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
