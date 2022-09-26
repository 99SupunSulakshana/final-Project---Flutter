import 'package:final_project/provider/mobitel/howtoguidedata.dart';
import 'package:final_project/screens/admin/mobitel/guides/admin_guides.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../utils/snack_message.dart';

class CreateGuides extends StatefulWidget {
  const CreateGuides({Key? key}) : super(key: key);

  @override
  State<CreateGuides> createState() => _CreateGuidesState();
}

class _CreateGuidesState extends State<CreateGuides> {
  String taskTitle="";
  String description="";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: <Widget>[
          Text(
              'Title',
              style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold)
          ),
          TextField(
            autofocus: true,
            onChanged: (val){
              taskTitle = val;
            },
          ),
          Text(
              'description',
              style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold)
          ),
          TextField(
            autofocus: true,
            maxLines: 10,
            onChanged: (val){
              description = val;
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextButton(onPressed: (){
            if(taskTitle.isNotEmpty || description.isNotEmpty){
              Provider.of<HowtoGuideData>(context, listen: false)
                  .addGuide(taskTitle, description);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AdminGuides()));
              showMessage(
                  message: "New guide added successfully !",
                  context: context);
            }
            else{
              showMessage(
                  message: "All fields are required !",
                  context: context);
            }
          }, child: Text(
            'Submit',
              style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold)
          ))
        ],
      ),
    );
  }
}
