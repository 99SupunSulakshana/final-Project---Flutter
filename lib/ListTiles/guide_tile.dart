import 'package:final_project/model/howtoguide.dart';
import 'package:final_project/provider/mobitel/howtoguidedata.dart';
import 'package:final_project/screens/admin/mobitel/guides/guide_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/snack_message.dart';

class GuideTile extends StatelessWidget {
  final HowToGuide howToGuide;
  final HowtoGuideData howtoGuideData;
  final VoidCallback onTap;

  const GuideTile({Key? key, required this.howToGuide, required this.howtoGuideData, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      visualDensity: const VisualDensity(vertical: 4),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.album, color: Colors.pink,size: 25.0,),
        ),
        title: Text(
          howToGuide.title,
          style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold)
        ),
        subtitle: Text(
          howToGuide.description,
            style: GoogleFonts.poppins(fontSize: 10.0, color: Colors.grey, fontWeight: FontWeight.bold)
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete_forever, color: Colors.red,),
          onPressed: () {
          //  tasksData.deleteTask(task);
            howtoGuideData.deleteGuides(howToGuide);
            showMessage(
                message: "Guide deleted successfully !",
                context: context);
          },
        ),
      selected: true,
      selectedColor: Colors.purpleAccent,
      selectedTileColor: Colors.white60,
    );
  }
}
