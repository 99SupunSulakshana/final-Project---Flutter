import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/privacy.dart';
import '../provider/mobitel/privacydata.dart';
import '../utils/snack_message.dart';

class PrivacyTile extends StatelessWidget {
  final Privacy privacy;
  final PrivacyData privacyData;
  final VoidCallback onTap;
  PrivacyTile({Key? key, required this.onTap, required this.privacy, required this.privacyData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: ListTile(
        onTap: onTap,
        visualDensity: const VisualDensity(vertical: 4),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.album, color: Colors.pink,size: 25.0,),
        ),
        title: Text(
            privacy.privacy_name.toString(),
            style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold)
        ),
        subtitle: RichText(
          text: TextSpan(
              text: privacy.description+"\n",
              style: GoogleFonts.poppins(fontSize: 10.0, color: Colors.grey, fontWeight: FontWeight.bold),
              children: <TextSpan> [
                TextSpan(
                  text: privacy.created_time.toString(),
                  style: GoogleFonts.poppins(fontSize: 13.0, color: Colors.red, fontWeight: FontWeight.bold),
                )
              ]
          ),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete_forever, color: Colors.red,),
          onPressed: () {
            //  tasksData.deleteTask(task);
            privacyData.deletePrivacy(privacy);
            showMessage(
                message: "Privacy deleted successfully !",
                context: context);
          },
        ),
        selected: true,
        selectedColor: Colors.purpleAccent,
        selectedTileColor: Colors.white60,
      ),
    );
  }
}
