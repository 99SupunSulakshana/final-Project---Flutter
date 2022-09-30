import 'package:final_project/screens/admin/mobitel/terms&conditions/termsMain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../provider/mobitel/termsData.dart';
import '../../../../utils/snack_message.dart';

class CreateTerms extends StatefulWidget {
  const CreateTerms({Key? key}) : super(key: key);

  @override
  State<CreateTerms> createState() => _CreateTermsState();
}

class _CreateTermsState extends State<CreateTerms> {
  @override
  Widget build(BuildContext context) {
    String name="";
    String description="";
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
                    'Terms & Conditions',
                    style: GoogleFonts.poppins(fontSize:18.0, color: Colors.green, fontWeight: FontWeight.bold)
                ),
              ],
            ),
          ),
          Text(
              'Terms & Condition title',
              style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.normal)
          ),
          TextField(
            autofocus: true,
            onChanged: (val){
              name = val;
            },
          ),
          Text(
              'Terms & Conditions Content',
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
              Provider.of<TermsData>(context, listen: false)
                  .addTerms(name, description);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TermsMain()));
              showMessage(
                  message: "New term & condition added successfully !",
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
