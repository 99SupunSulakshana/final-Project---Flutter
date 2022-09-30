import 'package:final_project/provider/mobitel/advertisementdata.dart';
import 'package:final_project/screens/admin/mobitel/advertisements/main_add.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../utils/snack_message.dart';

class CreateAdds extends StatefulWidget {
  const CreateAdds({Key? key}) : super(key: key);

  @override
  State<CreateAdds> createState() => _CreateAddsState();
}

class _CreateAddsState extends State<CreateAdds> {
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
                      'Create advertisement',
                      style: GoogleFonts.poppins(fontSize:18.0, color: Colors.green, fontWeight: FontWeight.bold)
                  ),
              ],
            ),
          ),
          Text(
              'Advertisement Name',
              style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.normal)
          ),
          TextField(
            autofocus: true,
            onChanged: (val){
              name = val;
            },
          ),
          Text(
              'Advertisement Content',
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
              Provider.of<AdvertisementData>(context, listen: false)
                  .addAdvertisement(name, description);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Addvertisement()));
              showMessage(
                  message: "New advertisement added successfully !",
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
