import 'package:final_project/screens/admin/mobitel/hotlines/hotline_main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../provider/mobitel/hotcodesdata.dart';
import '../../../../utils/snack_message.dart';

class CreateCode extends StatefulWidget {
  const CreateCode({Key? key}) : super(key: key);

  @override
  State<CreateCode> createState() => _CreateCodeState();
}

class _CreateCodeState extends State<CreateCode> {
  String name = "";
  String desc = "";
  String codeValue = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      const Icon(Icons.create, color: Colors.red, size: 30.0,),
                      Text(
                          'Create hotline code',
                          style: GoogleFonts.poppins(fontSize:18.0, color: Colors.green, fontWeight: FontWeight.bold)
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(
              'Code Title',
              style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.normal)
          ),
          TextField(
            autofocus: true,
            onChanged: (val){
              name = val;
            },
          ),
          Text(
              'Code Content',
              style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.normal)
          ),
          TextField(
            autofocus: true,
            maxLines: 10,
            onChanged: (val){
              codeValue = val;
            },
          ),
          Text(
              'Code Value',
              style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.normal)
          ),
          TextField(
            autofocus: true,
            maxLines: 1,
            onChanged: (val){
              desc = val;
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextButton(onPressed: (){
            if(name.isNotEmpty || desc.isNotEmpty || codeValue.isNotEmpty){
              Provider.of<HotCodesData>(context, listen: false)
                  .addCodes(name, desc, codeValue);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HotCodesMain()));
              showMessage(
                  message: "New hot code added successfully !",
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
