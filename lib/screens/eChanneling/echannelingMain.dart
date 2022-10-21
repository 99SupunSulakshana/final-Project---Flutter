import 'package:final_project/screens/eChanneling/doctors/doctors_main.dart';
import 'package:final_project/screens/eChanneling/hospitals/hospital_main.dart';
import 'package:final_project/screens/eChanneling/nurses/nurse_main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/routers.dart';

class EchannelMain extends StatefulWidget {
  const EchannelMain({Key? key}) : super(key: key);

  @override
  State<EchannelMain> createState() => _EchannelMainState();
}

class _EchannelMainState extends State<EchannelMain> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("eChannelling Service"),
            centerTitle: true,
            actions: [
              // IconButton(onPressed: () {}, icon: const Icon(Icons.search))
            ],
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Image(
                      image: AssetImage("assets/images/hospital.png"),
                      height: 220.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  TextButton(
                      onPressed:(){
                        PageNavigator(ctx: context)
                            .nextPage(page: HospitalMain());
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.album, color: Colors.pink,size: 20.0,),
                          SizedBox(width: 20.0,),
                          Text(
                            "REGISTERED HOSPITALS",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.aBeeZee(
                                fontWeight: FontWeight.normal,
                                fontSize: 20.0, color: Colors.pink),
                          ),
                        ],
                      )),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Image(
                      image: AssetImage("assets/images/doctors.png"),
                      height: 220.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  TextButton(
                      onPressed:(){
                        PageNavigator(ctx: context)
                            .nextPage(page: Doctors_main());
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.album, color: Colors.lightBlue,size: 20.0,),
                          const SizedBox(width: 20.0,),
                          Text(
                            "REGISTERED DOCTORS",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.aBeeZee(
                                fontWeight: FontWeight.normal,
                                fontSize: 20.0, color: Colors.lightBlue),
                          ),
                        ],
                      )),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Image(
                      image: AssetImage("assets/images/nurse.png"),
                      height: 220.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  TextButton(
                      onPressed:(){
                        PageNavigator(ctx: context)
                            .nextPage(page: Nurse_main());
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.album, color: Colors.pink,size: 20.0,),
                          SizedBox(width: 20.0,),
                          Expanded(
                            child: Text(
                              "REGISTERED NURSING/ATTENDANT SERVICES",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.aBeeZee(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20.0, color: Colors.green),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            )
          ),
        ));
  }
}
