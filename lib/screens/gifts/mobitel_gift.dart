import 'package:final_project/screens/gifts/mobitel_gift_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../ListTiles/weeklyPackagesUsers_title.dart';
import '../../model/weeklyPackges.dart';
import '../../provider/mobitel/weeklyPackageData.dart';
import '../../services/WeeklyPackageService.dart';

class MobitelGifts extends StatefulWidget {
  const MobitelGifts({Key? key}) : super(key: key);

  @override
  State<MobitelGifts> createState() => _MobitelGiftsState();
}

class _MobitelGiftsState extends State<MobitelGifts> {
  List<WeeklyPackages>? weeklys;
  int counter = 0;
  getWeeklypackages() async {
    weeklys = await WeeklyPackageService.getWeeklyPackages();
    Provider.of<WeeklyPackageData>(context, listen: false).weeklys = weeklys!;
    setState((){});
  }

  @override
  void initState(){
    super.initState();
    getWeeklypackages();
  }
  @override
  Widget build(BuildContext context) {

    return weeklys == null
        ?  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            Text("Mobitel gift not available now!!!",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 20.0,
                  color: Colors.grey
              ),
            )
          ],
        ),
      ),
    ): Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Consumer<WeeklyPackageData>(
            builder: (context, weeklyPackageData, child){
              return ListView.builder(
                  itemCount: weeklyPackageData.weeklys.length,
                  itemBuilder: (context, index){
                    counter ++;
                    WeeklyPackages weeklyPackages = weeklyPackageData.weeklys[index];
                    return WeeklyPackageUsersTile(
                      weeklyPackages: weeklyPackages,
                      weeklyPackageData: weeklyPackageData,
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MobitelGiftDetails(weeklyPackages)));
                      },
                    );
                  });
            }
        ),
      ),
    );
  }
}
