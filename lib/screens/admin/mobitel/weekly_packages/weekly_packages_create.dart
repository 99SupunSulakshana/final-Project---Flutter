import 'package:final_project/provider/mobitel/weeklyPackageData.dart';
import 'package:final_project/screens/admin/mobitel/weekly_packages/weekly_main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../utils/snack_message.dart';

class CreateWeeklyPackages extends StatefulWidget {
  const CreateWeeklyPackages({Key? key}) : super(key: key);

  @override
  State<CreateWeeklyPackages> createState() => _CreateWeeklyPackagesState();
}

class _CreateWeeklyPackagesState extends State<CreateWeeklyPackages> {
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
                          'Create Weekly packages',
                          style: GoogleFonts.poppins(fontSize:18.0, color: Colors.green, fontWeight: FontWeight.bold)
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(
              'Package Title',
              style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.normal)
          ),
          TextField(
            autofocus: true,
            onChanged: (val){
              name = val;
            },
          ),
          Text(
              'Package Content',
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
              'Cost Value',
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
              Provider.of<WeeklyPackageData>(context, listen: false)
                  .addWeeklyPackages(name, desc, codeValue);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WeeklyMain()));
              showMessage(
                  message: "New weekly package added successfully !",
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
