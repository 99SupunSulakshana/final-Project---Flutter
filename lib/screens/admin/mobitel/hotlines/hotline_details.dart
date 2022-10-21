import 'package:final_project/model/Code.dart';
import 'package:final_project/provider/mobitel/hotcodesdata.dart';
import 'package:final_project/screens/admin/mobitel/hotlines/hotline_main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../utils/snack_message.dart';

class HotLineDetails extends StatelessWidget {
  final Code code;
  HotLineDetails(this.code);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("HotLine Code - ${code.id.toString()}"),
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
                          image: AssetImage("assets/images/codes.png")
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
                                initialValue: code.id.toString(),
                                decoration: const InputDecoration(
                                  hintText: "Code ID",
                                )
                            ),
                          ),
                          Text(
                              'Code ID',
                              style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.red, fontWeight: FontWeight.bold)
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              enabled: false,
                              initialValue: code.code_title.toString(),
                              decoration: const InputDecoration(
                                hintText: "Code Title",
                              ),
                            ),
                          ),
                          Text(
                              'Code Title',
                              style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red, fontWeight: FontWeight.bold)
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              enabled: false,
                              minLines: 1,
                              maxLines: 10,
                              initialValue: code.description.toString(),
                              decoration: const InputDecoration(
                                hintText: "content",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Text(
                                'Code value',
                                style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.red, fontWeight: FontWeight.bold)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              enabled: false,
                              minLines: 1,
                              maxLines: 10,
                              initialValue: code.code.toString(),
                              decoration: const InputDecoration(
                                hintText: "value",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Text(
                                'Code created date & time',
                                style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.red, fontWeight: FontWeight.bold)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              enabled: false,
                              minLines: 1,
                              maxLines: 10,
                              initialValue: code.created_time.toString(),
                              decoration: const InputDecoration(
                                hintText: "Date & Time",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Text(
                                'Date & Time',
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
    String id = code.id.toString();
    String name = "";
    String desc = "";
    String codeValue = "";
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text(
            'Code - update',
            textAlign: TextAlign.justify,

          ),
          content: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      initialValue: code.id.toString(),
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
                      initialValue: code.code_title.toString(),
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
                      initialValue: code.description.toString(),
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      initialValue: code.code.toString(),
                      onChanged: (val){
                        desc = val;
                      },
                      maxLines: 5,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Code value",
                          hintText: 'Code value'
                      ),
                    ),
                  ),
                ],
              )),
          actions: [
            TextButton(
                onPressed: () {
                  if(name.isNotEmpty || desc.isNotEmpty || codeValue.isNotEmpty){
                    Provider.of<HotCodesData>(context, listen: false)
                        .updateCode(id,name,desc,codeValue);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HotCodesMain()));
                    showMessage(
                        message: "New hot code added successfully !",
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
