import 'package:final_project/provider/mobitel/aboutusdata.dart';
import 'package:final_project/services/database_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../model/AboutUs.dart';

class AdminAboutUs extends StatefulWidget {
  const AdminAboutUs({Key? key}) : super(key: key);

  @override
  State<AdminAboutUs> createState() => _AdminAboutUsState();
}

class _AdminAboutUsState extends State<AdminAboutUs> {
  List<AboutUs>? tasks;

  getAboutUs() async{
    tasks = (await DatabaseServices.getAboutUs()).cast<AboutUs>();
    Provider.of<AboutUsData>(context, listen: false).aboutUss = tasks!;
    setState((){});
  }


  @override
  void initState(){
    super.initState();
    getAboutUs();
  }
  @override
  Widget build(BuildContext context) {
    return tasks == null?
        const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ):Scaffold(
      appBar: AppBar(
        title: Text(
          "AboutUs (${Provider.of<AboutUsData>(context).aboutUss.length})",
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Consumer<AboutUsData>(
          builder: (context, aboutUsData, child){
            return ListView.builder(
                itemBuilder: (context, index){
                  AboutUs aboutUs = aboutUsData.aboutUss[index];
                  return const AboutListTile(

                  );
                });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        child: const Icon(
          Icons.add
        ),
        onPressed: (){

        },
      ),
    );
  }
}
