import 'package:final_project/provider/mobitel/machine_learning/productivityData.dart';
import 'package:final_project/screens/admin/mobitel/prediction-ml/productivty/predictionHome.dart';
import 'package:final_project/screens/admin/mobitel/prediction-ml/productivty/productivity_last.dart';
import 'package:final_project/screens/admin/mobitel/prediction-ml/productivty/predictionHelp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dart:convert' as convert;
import '../../../../../services/machine_learning/productivity_service.dart';
import '../../../../../utils/routers.dart';
import '../../../../../utils/snack_message.dart';

class CheckProductivity extends StatefulWidget {
  const CheckProductivity({Key? key}) : super(key: key);

  @override
  State<CheckProductivity> createState() => _CheckProductivityState();
}

class _CheckProductivityState extends State<CheckProductivity> {

  TextEditingController quartersController = TextEditingController(text: "0");
  TextEditingController daysController = TextEditingController(text:"2");
  TextEditingController targeted_productivityController = TextEditingController(text:"0.55");
  TextEditingController standard_minute_valueController = TextEditingController(text:"2.9");
  TextEditingController work_in_progressController = TextEditingController(text: "1190.0");
  TextEditingController overall_using_timesController = TextEditingController(text: "960");
  TextEditingController incentive_package_usersController = TextEditingController(text: "0");
  TextEditingController idle_timeController = TextEditingController(text: "0.0");
  TextEditingController idle_menController = TextEditingController(text: "5");
  TextEditingController no_of_updatedController = TextEditingController(text: "1");

  var responseMsg;
  @override
  void dispose(){
    quartersController.dispose();
    daysController.dispose();
    targeted_productivityController.dispose();
    standard_minute_valueController.dispose();
    work_in_progressController.dispose();
    overall_using_timesController.dispose();
    incentive_package_usersController.dispose();
    idle_timeController.dispose();
    idle_menController.dispose();
    no_of_updatedController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white60,
        title: Text(
          "Administrator's operations",
          textDirection: TextDirection.ltr,
          style: GoogleFonts.poppins(fontSize: 20.0),
        ),
        centerTitle: true,
        actions: [
             IconButton(onPressed: () {
               PageNavigator(ctx: context)
                   .nextPage(page:  PredictionHomeMobitel());
             }, icon: const Icon(Icons.home)),
          IconButton(onPressed: () {
            PageNavigator(ctx: context)
                .nextPage(page:  PredictionHelp());
          }, icon: const Icon(Icons.help)),
             IconButton(onPressed: () {

             }, icon: const Icon(Icons.logout_outlined)),
        ],
        elevation: 0 ,
      ),
      body: Container(
        color: Colors.grey[100],
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                  )
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Start to check your package/service productivity",
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(fontSize: 25.0, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                 SingleChildScrollView(
                   child: Column(
                    children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Portion of the month",
                      style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red),
                    ),
                ),
                 Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      // onChanged: (val) {
                      //   quarters = val;
                      // },
                      controller: quartersController,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Color(0xffF02E65)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                        ),
                        labelText: 'Enter quarter number',
                        hintText: 'Enter quarter of the month',
                      ),
                    ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Day of the Week",
                      style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red),
                    ),
                ),
                 Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      // onChanged: (val) {
                      //   days = val;
                      // },
                      controller: daysController,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Color(0xffF02E65)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                        ),
                        labelText: 'Eg: Sunday, Monday...',
                        hintText: 'Enter Your Name',
                      ),
                    ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Target productivity rate of day",
                      style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red),
                    ),
                ),
                Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      // onChanged: (val) {
                      //   targeted_productivity = val;
                      // },
                      controller: targeted_productivityController,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Color(0xffF02E65)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                        ),
                        labelText: 'Enter target productivity',
                        hintText: 'Enter target productivity',
                      ),
                    ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Standard Minute Value",
                      style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red),
                    ),
                ),
                Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      // onChanged: (val) {
                      //   standard_minute_value = val;
                      // },
                      controller: standard_minute_valueController,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Color(0xffF02E65)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                        ),
                        labelText: "Standard Minute Value",
                        hintText: 'Standard Minute Value',
                      ),
                    ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Package/ Service progress",
                      style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red),
                    ),
                ),
                Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      // onChanged: (val) {
                      //   work_in_progress = val;
                      // },
                      controller: work_in_progressController,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Color(0xffF02E65)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                        ),
                        labelText: 'Package/ Service progress',
                        hintText: 'Package/ Service progress',
                      ),
                    ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Overall used time (minutes)",
                      style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red),
                    ),
                ),
                Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      // onChanged: (val) {
                      //   overall_using_times = val;
                      // },
                      controller: overall_using_timesController,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Color(0xffF02E65)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                        ),
                        labelText: 'Overall used time (minutes)',
                        hintText: 'Overall used time (minutes)',
                      ),
                    ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Represents the amount of incentive",
                      style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red),
                    ),
                ),
                Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      // onChanged: (val) {
                      //   incentive_package_users = val;
                      // },
                      controller: incentive_package_usersController,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Color(0xffF02E65)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                        ),
                        labelText: 'Represents the amount of incentive',
                        hintText: 'Represents the amount of incentive',
                      ),
                    ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Package interrupted time(minutes)",
                      style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red),
                    ),
                ),
                Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      // onChanged: (val) {
                      //   idle_time = val;
                      // },
                      controller: idle_timeController,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Color(0xffF02E65)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                        ),
                        labelText: 'Package interrupted time(minutes)',
                        hintText: 'Package interrupted time(minutes)',
                      ),
                    ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Package interrupted users",
                      style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red),
                    ),
                ),
                Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      // onChanged: (val) {
                      //   idle_men = val;
                      // },
                      controller: idle_menController,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Color(0xffF02E65)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                        ),
                        labelText: 'Package interrupted users',
                        hintText: 'Package interrupted users',
                      ),
                    ),
                ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "No of updates",
                          style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: TextField(
                          // onChanged: (val) {
                          //   no_of_updated = val;
                          // },
                          controller: no_of_updatedController,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 3, color: Color(0xffF02E65)),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                            ),
                            labelText: 'No of updates',
                            hintText: 'No of updates',
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: () async {
                              if(quartersController.text.isNotEmpty || daysController.text.isNotEmpty || targeted_productivityController.text.isNotEmpty || standard_minute_valueController.text.isNotEmpty || work_in_progressController.text.isNotEmpty || overall_using_timesController.text.isNotEmpty || incentive_package_usersController.text.isNotEmpty || idle_timeController.text.isNotEmpty || idle_menController.text.isNotEmpty || no_of_updatedController.text.isNotEmpty)
                              {
                                String quarters = quartersController.text;
                                String days = daysController.text;
                                String targeted_productivity = targeted_productivityController.text;
                                String standard_minute_value = standard_minute_valueController.text;
                                String work_in_progress = work_in_progressController.text;
                                String overall_using_times = overall_using_timesController.text;
                                String incentive_package_users = incentive_package_usersController.text;
                                String idle_time = idle_timeController.text;
                                String idle_men = idle_menController.text;
                                String no_of_updated = no_of_updatedController.text;

                                try{
                                  var response = await ProductivityServices.postPrediction(
                                      quarters,
                                      days,
                                      targeted_productivity,
                                      standard_minute_value,
                                      work_in_progress,
                                      overall_using_times,
                                      incentive_package_users,
                                      idle_time, idle_men,
                                      no_of_updated);
                                  print('Response body: ${response.body.toString()}');
                                  if(response.statusCode == 200)
                                  {
                                    setState(() {
                                      responseMsg = convert.jsonDecode(response.body.toString());
                                    });
                                    showMessage(
                                        message: "Your productivity prediction Successfully!",
                                        context: context);
                                  }
                                  else{
                                    PageNavigator(ctx: context)
                                        .nextPage(page:  CheckProductivity());
                                    showMessage(
                                        message: "Error!! All fields required",
                                        context: context);
                                  }
                                }catch(ex){
                                  showMessage(
                                      message: "Error : $ex",
                                      context: context);
                                }
                              }
                          },
                          child: Text(
                              'SUBMIT DETAILS',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.green),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 120,
                          decoration: const BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: SingleChildScrollView(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      "Your productivity results",
                                      textDirection: TextDirection.ltr,
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(fontSize: 20.0, color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      responseMsg.toString(),
                                      textDirection: TextDirection.ltr,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.orange),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: (){
                            PageNavigator(ctx: context)
                                .nextPage(page:  ProductivityLastScreen());
                          },
                          child: Text(
                            "NEXT",
                            textDirection: TextDirection.ltr,
                            style: GoogleFonts.poppins(
                                fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange
                            ),
                          ),
                        )
                      ),
      ]
                ),
                 ),
            
            ],
          ),
        ),
      ),
    ));
  }
}

