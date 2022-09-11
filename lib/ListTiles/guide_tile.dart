import 'package:final_project/model/howtoguide.dart';
import 'package:final_project/provider/howtoguidedata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GuideTile extends StatelessWidget {
  final HowToGuide howToGuide;
  final HowtoGuideData howtoGuideData;

  const GuideTile({Key? key, required this.howToGuide, required this.howtoGuideData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Text(
          howToGuide.id.toString()
        ),
        title: Text(
          howToGuide.title
        ),
        trailing: const Icon(
          Icons.delete_forever
        ),
      )
    );
  }
}
