import 'package:final_project/screens/admin/mobitel/terms&conditions/termsMain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../model/terms.dart';
import '../../../../provider/mobitel/termsData.dart';
import '../../../../utils/snack_message.dart';

class TermsDetails extends StatelessWidget {
  final Terms terms;
  const TermsDetails({Key? key, required this.terms}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Terms & Conditions - ${terms.id.toString()}"),
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
                          image: AssetImage("assets/images/terms.png")
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
                                initialValue: terms.id.toString(),
                                decoration: const InputDecoration(
                                  hintText: "Term & condition ID",
                                )
                            ),
                          ),
                          Text(
                              'Term & condition ID',
                              style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.red, fontWeight: FontWeight.bold)
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              enabled: false,
                              initialValue: terms.term_name.toString(),
                              decoration: const InputDecoration(
                                hintText: "Terms & conditions Title",
                              ),
                            ),
                          ),
                          Text(
                              'Terms & conditions Title',
                              style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red, fontWeight: FontWeight.bold)
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              enabled: false,
                              minLines: 1,
                              maxLines: 10,
                              initialValue: terms.description.toString(),
                              decoration: const InputDecoration(
                                hintText: "Role",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Text(
                                'Terms & conditions description',
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
    String id = terms.id.toString();
    String name = "";
    String desc = "";
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            'Terms & conditions - update',
            style: GoogleFonts.poppins(fontSize: 18.0, color: Colors.green, fontWeight: FontWeight.bold),
            textAlign: TextAlign.justify,

          ),
          content: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      initialValue: terms.id.toString(),
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
                      initialValue: terms.term_name.toString(),
                      onChanged: (val){
                        name = val;
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Term title',
                          hintText: 'Title'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      initialValue: terms.description.toString(),
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
                    Provider.of<TermsData>(context, listen: false)
                        .updateTerms(id,name,desc);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TermsMain()));
                    showMessage(
                        message: "Term updated successfully !",
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
