import 'package:final_project/provider/howtoguidedata.dart';
import 'package:final_project/services/guide_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../ListTiles/guide_tile.dart';
import '../../model/howtoguide.dart';

class AdminGuides extends StatefulWidget {
  const AdminGuides({Key? key}) : super(key: key);

  @override
  State<AdminGuides> createState() => _AdminGuidesState();
}

class _AdminGuidesState extends State<AdminGuides> {
  List<HowToGuide>? howtoguides;

  getGuides() async {
    howtoguides = await GuideServices.getGuide();
    Provider.of<HowtoGuideData>(context, listen: false).howToGuides = howtoguides!;
    setState((){});
  }

  @override
  void initState(){
    super.initState();
    getGuides();
  }


  @override
  Widget build(BuildContext context) {
    return howtoguides == null
      ? const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    ): Scaffold(
      appBar: AppBar(
        title: Text(
          'Guides (${Provider.of<HowtoGuideData>(context).howToGuides.length})'
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Consumer<HowtoGuideData>(
          builder: (context, howtoguideData, child){
           return ListView.builder(
             itemCount: howtoguideData.howToGuides.length,
               itemBuilder: (context, index){
               HowToGuide howToGuide = howtoguideData.howToGuides[index];
               return GuideTile(
                 howToGuide: howToGuide,
                 howtoGuideData: howtoguideData,
               );
               });
          }
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
