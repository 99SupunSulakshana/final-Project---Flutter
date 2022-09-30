import 'package:final_project/model/advertisements.dart';
import 'package:final_project/provider/mobitel/advertisementdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/snack_message.dart';

class AddTile extends StatelessWidget {
  final Advertisement advertisement;
  final AdvertisementData advertisementData;
  final VoidCallback onTap;
  AddTile({Key? key, required this.advertisement, required this.advertisementData, required this.onTap}) : super(key: key);

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
            advertisement.name,
            style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold)
        ),
        subtitle: RichText(
          text: TextSpan(
            text: advertisement.description+"\n",
            style: GoogleFonts.poppins(fontSize: 10.0, color: Colors.grey, fontWeight: FontWeight.bold),
              children: <TextSpan> [
                TextSpan(
                  text: advertisement.created_time.toString(),
                  style: GoogleFonts.poppins(fontSize: 13.0, color: Colors.red, fontWeight: FontWeight.bold),
                )
              ]
          ),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete_forever, color: Colors.red,),
          onPressed: () {
            //  tasksData.deleteTask(task);
            advertisementData.deleteAdvertisement(advertisement);
            showMessage(
                message: "Advertisement deleted successfully !",
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
