import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChurnHelp extends StatefulWidget {
  const ChurnHelp({Key? key}) : super(key: key);

  @override
  State<ChurnHelp> createState() => _ChurnHelpState();
}

class _ChurnHelpState extends State<ChurnHelp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: Text(
        "Help",
        textDirection: TextDirection.ltr,
        style: GoogleFonts.poppins(fontSize: 20.0),
    ),
    actions: [
    //    IconButton(onPressed: () {}, icon: const Icon(Icons.help_outline_sharp)),
    IconButton(onPressed: () {}, icon: const Icon(Icons.logout_outlined)),
    ],
    elevation: 0 ,
    ),
    body: Container(
    child: SingleChildScrollView(
    child: Column(
    children: <Widget>[
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    height: 140,
    decoration: const BoxDecoration(
    color: Colors.limeAccent,
    borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    child: Align(
    alignment: Alignment.center,
    child: SingleChildScrollView(
    child: Column(
    children: <Widget>[
    helpToken(Icons.album_outlined, "About amount of weeks",
    ""
    ),
    ],
    ),
    ),
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    height: 140,
    decoration: const BoxDecoration(
    color: Colors.pinkAccent,
    borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    child: Align(
    alignment: Alignment.center,
    child: SingleChildScrollView(
    child: Column(
    children: <Widget>[
    helpToken(Icons.album_outlined, "About Contract renewals",
    ""
    ),
    ],
    ),
    ),
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    height: 140,
    decoration: const BoxDecoration(
    color: Colors.lightGreenAccent,
    borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    child: Align(
    alignment: Alignment.center,
    child: SingleChildScrollView(
    child: Column(
    children: <Widget>[
    helpToken(Icons.album_outlined, "About amount of data plan",
    ""
    ),
    ],
    ),
    ),
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    height: 140,
    decoration: const BoxDecoration(
    color: Colors.redAccent,
    borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    child: Align(
    alignment: Alignment.center,
    child: SingleChildScrollView(
    child: Column(
    children: <Widget>[
    helpToken(Icons.album_outlined, "Amount of data usage",
    "."
    ),
    ],
    ),
    ),
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    height: 140,
    decoration: const BoxDecoration(
    color: Colors.orangeAccent,
    borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    child: Align(
    alignment: Alignment.center,
    child: SingleChildScrollView(
    child: Column(
    children: <Widget>[
    helpToken(Icons.album_outlined, "About Amount of customer service calls",
    ""
    ),
    ],
    ),
    ),
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    height: 140,
    decoration: const BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    child: Align(
    alignment: Alignment.center,
    child: SingleChildScrollView(
    child: Column(
    children: <Widget>[
    helpToken(Icons.album_outlined, "About Total monthly charges",
    ""
    ),
    ],
    ),
    ),
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    height: 140,
    decoration: const BoxDecoration(
    color: Colors.lightBlueAccent,
    borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    child: Align(
    alignment: Alignment.center,
    child: SingleChildScrollView(
    child: Column(
    children: <Widget>[
    helpToken(Icons.album_outlined, "About Overage fee",
    ""
    ),
    ],
    ),
    ),
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    height: 140,
    decoration: const BoxDecoration(
    color: Colors.pink,
    borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    child: Align(
    alignment: Alignment.center,
    child: SingleChildScrollView(
    child: Column(
    children: <Widget>[
    helpToken(Icons.album_outlined, "About Total roaming minutes",
    ""
    ),
    ],
    ),
    ),
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    height: 140,
    decoration: const BoxDecoration(
    color: Colors.blueGrey,
    borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    child: Align(
    alignment: Alignment.center,
    child: SingleChildScrollView(
    child: Column(
    children: <Widget>[
    helpToken(Icons.album_outlined, "Package interrupted users",
    "The amount of users when the package/service was interrupted due to several reasons."
    ),
    ],
    ),
    ),
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    height: 140,
    decoration: const BoxDecoration(
    color: Colors.yellow,
    borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    child: Align(
    alignment: Alignment.center,
    child: SingleChildScrollView(
    child: Column(
    children: <Widget>[
    helpToken(Icons.album_outlined, "No of updates",
    "Implemented the last no of updates."
    ),
    ],
    ),
    ),
    ),
    ),
    ),
    ],
    ),
    ),
    ),
        ));
  }
  Widget helpToken(IconData icon, String title, String subTitle){
    return ListTile(
      leading: const Icon(Icons.album, color: Colors.red,),
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(title,
          textDirection: TextDirection.ltr,
          style: GoogleFonts.poppins(
              fontSize: 15.0,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold),),
      ),
      subtitle: Text(subTitle,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.justify,
        style: GoogleFonts.poppins(
            fontSize: 15.0,
            color: Colors.black,
            fontWeight: FontWeight.normal),
      ),
    );
  }
}
