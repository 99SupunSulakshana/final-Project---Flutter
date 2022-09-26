class Churn{
 final double accountWeeks;
 final double contractRenewal;
 final double dataPlan;
 final double dataUsage;
 final double custServCalls;
 final double dayMins;
 final double dayCells;
 final double monthlyCharge;
 final double overageFee;
 final double roamMins;

 Churn({
   required this.accountWeeks,
   required this.contractRenewal,
   required this.dataPlan,
   required this.dataUsage,
   required this.custServCalls,
   required this.dayMins,
   required this.dayCells,
   required this.monthlyCharge,
   required this.overageFee,
   required this.roamMins
  });

 factory Churn.fromMap(Map churnMap){
   return Churn(
       accountWeeks: churnMap['accountWeeks'],
       contractRenewal: churnMap['contractRenewal'],
       dataPlan: churnMap['dataPlan'],
       dataUsage: churnMap['dataUsage'],
       custServCalls: churnMap['custServCalls'],
       dayMins: churnMap['dayMins'],
       dayCells: churnMap['dayCells'],
       monthlyCharge: churnMap['monthlyCharge'],
       overageFee: churnMap['overageFee'],
       roamMins: churnMap['roamMins']
   );
 }
}