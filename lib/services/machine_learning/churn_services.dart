import 'dart:convert';

import 'package:final_project/constants/globals.dart';
import 'package:http/http.dart' as http;
class ChurnService {
   static dynamic postChurn(
       String AccountWeeks,
       String ContractRenewal,
       String DataPlan,
       String DataUsage,
       String CustServCalls,
       String DayMins,
       String DayCalls,
       String MonthlyCharge,
       String OverageFee,
       String RoamMins
       ) async {
     final http.Response response = await http.post(
       Uri.parse(pythonUrl + '/churn'),
       headers: headers,
       body: jsonEncode(<String, String>{
         "AccountWeeks": AccountWeeks,
         "ContractRenewal" : ContractRenewal,
         "DataPlan" : DataPlan,
         "DataUsage" : DataUsage,
         "CustServCalls" : CustServCalls,
         "DayMins" : DayMins,
         "DayCalls" :DayCalls,
         "MonthlyCharge" : MonthlyCharge,
         "OverageFee" : OverageFee,
         "RoamMins" : RoamMins
       })
     );
     print('Response body: ${response.body.toString()}');
     return response;
   }
}