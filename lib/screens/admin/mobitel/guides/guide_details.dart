import 'package:final_project/model/howtoguide.dart';
import 'package:final_project/screens/admin/mobitel/guides/admin_guides.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../provider/mobitel/howtoguidedata.dart';
import '../../../../utils/routers.dart';
import '../../../../utils/snack_message.dart';

class GuideDetails extends StatelessWidget {
  final HowToGuide guide;
 const GuideDetails(this.guide);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(" User Guides"),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 200,
                      width: double.infinity,
                      child: Image(
                      image: AssetImage("assets/images/guides.png")
                  )),

                  Card(
                    margin: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    elevation: 20,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  enabled: false,
                                  textAlign: TextAlign.center,
                                  initialValue: guide.id.toString(),
                                decoration: const InputDecoration(
                                  hintText: "Role",
                                )
                              ),
                          ),


                  Text(
                        'Guide ID',
                        style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.red, fontWeight: FontWeight.bold)
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                         enabled: false,
                         initialValue: guide.title.toString(),
                          decoration: const InputDecoration(
                            hintText: "Role",
                          ),
                        ),
                  ),
                  Text(
                        'Guide title',
                        style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red, fontWeight: FontWeight.bold)
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          enabled: false,
                         minLines: 1,
                         maxLines: 5,
                         initialValue: guide.description.toString(),
                          decoration: const InputDecoration(
                            hintText: "Role",
                          ),
                        ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text(
                          'Guide description',
                          style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.red, fontWeight: FontWeight.bold)
                      ),
                  ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      UpdateGuides(context);
                    },
                    icon: const Icon(Icons.edit, size: 18),
                    label: const Text('Update'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple,
                    ),
                  ),
                  // ElevatedButton.icon(
                  //   onPressed: () {
                  //     // Respond to button press
                  //   },
                  //   icon: const Icon(Icons.add, size: 18),
                  //   label: const Text("GET NOW"),
                  //   style: ElevatedButton.styleFrom(
                  //     primary: Colors.green,
                  //   ),
                  // )

                  //  Padding(
                  //padding: const EdgeInsets.all(8.0),
                  //  customButton(text: 'Add TO CART'),
                ],
              ),
            ),
          ),
        ));
  }

  void UpdateGuides(context){
    String id = guide.id.toString();
    String title = "";
    String desc = "";
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text(
            'Help guides - update',
            textAlign: TextAlign.justify,

          ),
          content: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      initialValue: guide.id.toString(),
                      enabled: false,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'ID',
                          hintText: 'ID'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      initialValue: guide.title.toString(),
                      onChanged: (val){
                        title = val;
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Title',
                          hintText: 'Title'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      initialValue: guide.description.toString(),
                      onChanged: (val){
                        desc = val;
                      },
                      maxLines: 5,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Description',
                          hintText: 'Description'
                      ),
                    ),
                  ),
                ],
              )),
          actions: [
            TextButton(
                onPressed: () {
                  if(title.isNotEmpty || desc.isNotEmpty){
                    Provider.of<HowtoGuideData>(context, listen: false)
                        .updateGuides(id,title,desc);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AdminGuides()));
                    showMessage(
                        message: "New guide added successfully !",
                        context: context);
                  } else{
                    showMessage(
                        message: "All fields are required !",
                        context: context);
                  }

                },
                child: const Text('SUBMIT')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('CANCEL')),
          ],
        ));
  }

}


