import 'package:final_project/model/advertisements.dart';
import 'package:final_project/provider/mobitel/advertisementdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../utils/snack_message.dart';
import 'main_add.dart';



class AddDetails extends StatelessWidget {
  final Advertisement advertisement;
  AddDetails(this.advertisement);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Advertisements - ${advertisement.id.toString()}"),
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
                                initialValue: advertisement.id.toString(),
                                decoration: const InputDecoration(
                                  hintText: "Advertisement ID",
                                )
                            ),
                          ),
                          Text(
                              'Advertisement ID',
                              style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.red, fontWeight: FontWeight.bold)
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              enabled: false,
                              initialValue: advertisement.name.toString(),
                              decoration: const InputDecoration(
                                hintText: "Advertisement Title",
                              ),
                            ),
                          ),
                          Text(
                              'Advertisement Title',
                              style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red, fontWeight: FontWeight.bold)
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              enabled: false,
                              minLines: 1,
                              maxLines: 10,
                              initialValue: advertisement.description.toString(),
                              decoration: const InputDecoration(
                                hintText: "Role",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Text(
                                'Advertisement description',
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
    String id = advertisement.id.toString();
    String name = "";
    String desc = "";
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            'Advertisement - update',
            textAlign: TextAlign.justify,
            style: GoogleFonts.poppins(color: Colors.green),
          ),
          content: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      initialValue: advertisement.id.toString(),
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
                      initialValue: advertisement.name.toString(),
                      onChanged: (val){
                        name = val;
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
                      initialValue: advertisement.description.toString(),
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
                  if(name.isNotEmpty || desc.isNotEmpty){
                    Provider.of<AdvertisementData>(context, listen: false)
                        .updateAdvertisement(id,name,desc);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Addvertisement()));
                    showMessage(
                        message: "New advertisement added successfully !",
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
