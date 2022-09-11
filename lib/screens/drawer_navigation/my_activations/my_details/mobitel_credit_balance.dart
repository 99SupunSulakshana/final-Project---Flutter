import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class MobitelCreditBalance extends StatefulWidget {
  const MobitelCreditBalance({Key? key}) : super(key: key);

  @override
  State<MobitelCreditBalance> createState() => _MobitelCreditBalanceState();
}

class _MobitelCreditBalanceState extends State<MobitelCreditBalance> {
  int choiceIndex = 0;

  Map<String, double> dataMap = {
    "Remaining Credits": 51.56,
    "Wested credits": 49.44
  };

  List<Color> colorList = [
   const Color(0xffD95AF3),
    const Color(0xff3EE094),

  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              title: const Text("Mobitel Credit Balance"),
              centerTitle: true,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_outlined),
                onPressed: () {},
              ),
              actions: []
          ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: PieChart(
                      dataMap: dataMap,
                    colorList: colorList,
                    chartRadius: MediaQuery.of(context).size.width/2,
                    centerText: "Credit Balance",
                    chartType: ChartType.ring,
                    ringStrokeWidth: 24,
                    animationDuration: const Duration(seconds: 3),
                    chartValuesOptions: const ChartValuesOptions(
                      showChartValues: true,
                      showChartValuesOutside: true,
                      showChartValuesInPercentage: true,
                      showChartValueBackground: true
                    ),
                    legendOptions: const LegendOptions(
                      showLegends: true,
                      legendShape: BoxShape.rectangle,
                      legendTextStyle: TextStyle(
                          fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                      legendPosition: LegendPosition.bottom
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(10.0),
                    height: 160.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: Colors.white, width: 1.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(.5),
                              blurRadius: 20.0,
                              spreadRadius: 0.0,
                              offset: const Offset(5.0, 5.0)),
                        ]),
                    child: Column(
                      children: [
                        Text(
                          "Credits expired date: 2022-12-31 00:00:00",
                          textAlign: TextAlign.center,
                          style:
                          GoogleFonts.poppins(fontSize: 18.0, color: Colors.white),
                        ),
                        Text(
                          "This month usage: Rs.125.00",
                          textAlign: TextAlign.center,
                          style:
                          GoogleFonts.poppins(fontSize: 18.0, color: Colors.white),
                        ),
                        Text(
                          "Remaining credits: Rs. 75.00",
                          textAlign: TextAlign.center,
                          style:
                          GoogleFonts.poppins(fontSize: 18.0, color: Colors.white),
                        ),
                        Text(
                          "Wested credits in this month: Rs. 125.00",
                          textAlign: TextAlign.center,
                          style:
                          GoogleFonts.poppins(fontSize: 18.0, color: Colors.white),
                        ),
                      ],
                    )),
              ],
            ),
          )
        ),
      ),
    );
  }
}
