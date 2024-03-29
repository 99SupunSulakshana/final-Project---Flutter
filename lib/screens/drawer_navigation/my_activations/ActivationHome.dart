
import 'package:final_project/screens/drawer_navigation/my_activations/dialog_postpaid.dart';
import 'package:final_project/screens/drawer_navigation/my_activations/dialog_prepaid.dart';
import 'package:final_project/screens/drawer_navigation/my_activations/mobitel_postpaid.dart';
import 'package:final_project/screens/drawer_navigation/my_activations/mobitel_prepaid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/routers.dart';

class ActivationHome extends StatefulWidget {
  const ActivationHome({Key? key}) : super(key: key);

  @override
  State<ActivationHome> createState() => _ActivationHomeState();
}

class _ActivationHomeState extends State<ActivationHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("My Activations"),
            centerTitle: true,
            actions: [
         //     IconButton(onPressed: () {}, icon: const Icon(Icons.search))

            ],
          ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Text(
                      "Dialog activations",
                      textAlign: TextAlign.center,
                      style:
                      GoogleFonts.poppins(fontSize: 20.0, color: Colors.red),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Divider(
                      color: Colors.red,
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(10.0),
                      height: 160.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: Colors.white, width: 1.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(.5),
                                blurRadius: 20.0,
                                spreadRadius: 0.0,
                                offset: const Offset(5.0, 5.0)),
                          ]),
                      child: const DialogPostPaid()),
                  const SizedBox(
                    height: 20.0,
                  ),

                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    child: Text(
                      "Mobitel activations",
                      textAlign: TextAlign.center,
                      style:
                      GoogleFonts.poppins(fontSize: 20.0, color: Colors.blue),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Divider(
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(10.0),
                      height: 160.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: Colors.white, width: 1.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(.5),
                                blurRadius: 20.0,
                                spreadRadius: 0.0,
                                offset: const Offset(5.0, 5.0)),
                          ]),
                      child: const MobitelPostPaid()),

                ],
            ),
          ),
        ),
      ),
    );
  }
}

class MobitelPostPaid extends StatelessWidget {
  const MobitelPostPaid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          "Mobitel Activations",
          textAlign: TextAlign.center,
          style: GoogleFonts.raleway(fontSize: 20.0, color: Colors.white),
        ),
        Text(
          "071 1327518",
          textAlign: TextAlign.center,
          style: GoogleFonts.raleway(fontSize: 20.0, color: Colors.white),
        ),
        Text(
          "Activated packages : 2",
          textAlign: TextAlign.center,
          style: GoogleFonts.raleway(fontSize: 20.0, color: Colors.white),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange,
                onPrimary: Colors.white,
                shadowColor: Colors.greenAccent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize: const Size(100, 40), //////// HERE
              ),
              onPressed: () {
                PageNavigator(ctx: context).nextPage(page: MobitelPostPaidScreen());
              },
              child: const Text('View More >>>'),
            ),

          ],
        )
      ],
    );
  }
}

class DialogPostPaid extends StatelessWidget {
  const DialogPostPaid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          "Dialog Activations",
          textAlign: TextAlign.center,
          style: GoogleFonts.raleway(fontSize: 20.0, color: Colors.white),
        ),
        Text(
          "077 1327510",
          textAlign: TextAlign.center,
          style: GoogleFonts.raleway(fontSize: 20.0, color: Colors.white),
        ),
        Text(
          "Activated packages : 11",
          textAlign: TextAlign.center,
          style: GoogleFonts.raleway(fontSize: 20.0, color: Colors.white),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                shadowColor: Colors.greenAccent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize: const Size(100, 40), //////// HERE
              ),
              onPressed: () {
                PageNavigator(ctx: context).nextPage(page: DialogPostPaidScreen());
              },
              child: const Text('View More >>>'),
            ),

          ],
        )
      ],
    );
  }
}

