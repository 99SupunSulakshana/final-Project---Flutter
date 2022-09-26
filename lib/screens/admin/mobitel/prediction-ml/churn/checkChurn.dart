import 'package:final_project/screens/admin/mobitel/prediction-ml/churn/churn_help.dart';
import 'package:final_project/screens/admin/mobitel/prediction-ml/churn/churn_last.dart';
import 'package:final_project/services/machine_learning/churn_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../utils/routers.dart';
import '../../../../../utils/snack_message.dart';
import '../productivty/checkProductivity.dart';
import '../productivty/predictionHelp.dart';
import '../productivty/predictionHome.dart';
import 'dart:convert' as convert;

import '../productivty/productivity_last.dart';

class CheckChurn extends StatefulWidget {
  const CheckChurn({Key? key}) : super(key: key);

  @override
  State<CheckChurn> createState() => _CheckChurnState();
}

class _CheckChurnState extends State<CheckChurn> {
  TextEditingController AccountWeeksController = TextEditingController(text: "128");
  TextEditingController ContractRenewalController = TextEditingController(text:"1");
  TextEditingController DataPlanController = TextEditingController(text:"1");
  TextEditingController DataUsageController = TextEditingController(text:"2.7");
  TextEditingController CustServCallsController = TextEditingController(text: "1");
  TextEditingController DayMinsController = TextEditingController(text: "265.1");
  TextEditingController DayCallsController = TextEditingController(text: "110");
  TextEditingController MonthlyChargeController = TextEditingController(text: "89.0");
  TextEditingController OverageFeeController = TextEditingController(text: "9.87");
  TextEditingController RoamMinsController = TextEditingController(text: "10.0");
  var responseMsg;
  @override
  void dispose(){
    AccountWeeksController.dispose();
    ContractRenewalController.dispose();
    DataPlanController.dispose();
    DataUsageController.dispose();
    CustServCallsController.dispose();
    DayMinsController.dispose();
    DayCallsController.dispose();
    MonthlyChargeController.dispose();
    OverageFeeController.dispose();
    RoamMinsController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  .nextPage(page:  ChurnHelp());
            }, icon: const Icon(Icons.help)),
            IconButton(onPressed: () {

            }, icon: const Icon(Icons.logout_outlined)),
          ],
          elevation: 0 ,
        ),
        body:Container(
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
                            "Start to check your package/service customers churn",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(fontSize: 25.0, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Amount of weeks",
                        style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextField(
                        // onChanged: (val) {
                        //   quarters = val;
                        // },
                        controller: AccountWeeksController,
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
                          labelText: 'Amount of weeks',
                          hintText: 'Amount of weeks',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Contract Renewal",
                        style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextField(
                        // onChanged: (val) {
                        //   quarters = val;
                        // },
                        controller: ContractRenewalController,
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
                          labelText: 'Contract Renewal',
                          hintText: 'Contract Renewal',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Amount of DataPlan",
                        style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextField(
                        // onChanged: (val) {
                        //   quarters = val;
                        // },
                        controller: DataPlanController,
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
                          labelText: 'Amount of DataPlan',
                          hintText: 'Amount of DataPlan',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Amount of DataUsage",
                        style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextField(
                        // onChanged: (val) {
                        //   quarters = val;
                        // },
                        controller: DataUsageController,
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
                          labelText: 'Amount of DataUsage',
                          hintText: 'Amount of DataUsage',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Amount of customer service calls",
                        style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextField(
                        // onChanged: (val) {
                        //   quarters = val;
                        // },
                        controller: CustServCallsController,
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
                          labelText: 'Amount of customer service calls',
                          hintText: 'Amount of customer service calls',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Amount of day's minutes",
                        style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextField(
                        // onChanged: (val) {
                        //   quarters = val;
                        // },
                        controller: DayMinsController,
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
                          labelText: "Amount of day's minutes",
                          hintText: "Amount of day's minutes",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Amount of calls",
                        style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextField(
                        // onChanged: (val) {
                        //   quarters = val;
                        // },
                        controller: DayCallsController,
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
                          labelText: 'Amount of calls',
                          hintText: 'Amount of calls',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Total monthly charge",
                        style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextField(
                        // onChanged: (val) {
                        //   quarters = val;
                        // },
                        controller: MonthlyChargeController,
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
                          labelText: 'Total monthly charge',
                          hintText: 'Total monthly charge',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Total OverageFee",
                        style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextField(
                        // onChanged: (val) {
                        //   quarters = val;
                        // },
                        controller: OverageFeeController,
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
                          labelText: 'Total OverageFee',
                          hintText: 'Total OverageFee',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Total roaming minutes",
                        style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextField(
                        // onChanged: (val) {
                        //   quarters = val;
                        // },
                        controller: RoamMinsController,
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
                          labelText: 'Total roaming minutes',
                          hintText: 'Total roaming minutes',
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () async {
                          if(AccountWeeksController.text.isNotEmpty || ContractRenewalController.text.isNotEmpty || DataPlanController.text.isNotEmpty || DataUsageController.text.isNotEmpty || CustServCallsController.text.isNotEmpty || DayMinsController.text.isNotEmpty || DayCallsController.text.isNotEmpty || MonthlyChargeController.text.isNotEmpty || OverageFeeController.text.isNotEmpty || RoamMinsController.text.isNotEmpty)
                          {
                            String Account= AccountWeeksController.text;
                            String Contract = ContractRenewalController.text;
                            String DataPlan = DataPlanController.text;
                            String DataUsage = DataUsageController.text;
                            String CustServCalls = CustServCallsController.text;
                            String DayMins = DayMinsController.text;
                            String DayCalls = DayCallsController.text;
                            String MonthlyCharge = MonthlyChargeController.text;
                            String OverageFee = OverageFeeController.text;
                            String RoamMins = RoamMinsController.text;

                            try{
                              var response = await ChurnService.postChurn(
                                  Account,
                                  Contract,
                                  DataPlan,
                                  DataUsage,
                                  CustServCalls,
                                  DayMins,
                                  DayCalls,
                                  MonthlyCharge,
                                  OverageFee,
                                  RoamMins
                              );
                              print('Response body: ${response.body.toString()}');
                              if(response.statusCode == 200)
                              {
                                setState(() {
                                  responseMsg = convert.jsonDecode(response.body.toString());
                                });
                                showMessage(
                                    message: "Your churn prediction Successfully!",
                                    context: context);
                              }
                              else{
                                PageNavigator(ctx: context)
                                    .nextPage(page: CheckChurn());
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
                                .nextPage(page:  ChurnNextLevel());
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
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
