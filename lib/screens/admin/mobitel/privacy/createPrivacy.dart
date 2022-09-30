import 'package:final_project/screens/admin/mobitel/privacy/privacyMain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../provider/mobitel/privacydata.dart';
import '../../../../utils/snack_message.dart';

class CreatePrivacy extends StatefulWidget {
  const CreatePrivacy({Key? key}) : super(key: key);

  @override
  State<CreatePrivacy> createState() => _CreatePrivacyState();
}

class _CreatePrivacyState extends State<CreatePrivacy> {
    String name="";
    String description="";
    @override
    Widget build(BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  const Icon(Icons.create, color: Colors.red, size: 30.0,),
                  Text(
                      'Create privacy & policy role',
                      style: GoogleFonts.poppins(fontSize:18.0, color: Colors.green, fontWeight: FontWeight.bold)
                  ),
                ],
              ),
            ),
            Text(
                'Rule title',
                style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.normal)
            ),
            TextField(
              autofocus: true,
              onChanged: (val){
                name = val;
              },
            ),
            Text(
                'Rule content',
                style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.normal)
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
              if(name.isNotEmpty || description.isNotEmpty){
                Provider.of<PrivacyData>(context, listen: false)
                    .addPrivacy(name, description);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PrivacyMain()));
                showMessage(
                    message: "New rule added successfully !",
                    context: context);
              }
              else{
                showMessage(
                    message: "All fields are required !",
                    context: context);
              }
            }, child: Text(
                'Submit',
                style: GoogleFonts.poppins(fontSize:18.0, color: Colors.green, fontWeight: FontWeight.bold)
            ))
          ],
        ),
      );
  }
}
