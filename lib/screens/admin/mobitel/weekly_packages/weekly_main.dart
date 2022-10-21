import 'package:final_project/ListTiles/weeklyPackages_tile.dart';
import 'package:final_project/model/weeklyPackges.dart';
import 'package:final_project/provider/mobitel/weeklyPackageData.dart';
import 'package:final_project/screens/admin/mobitel/weekly_packages/weekly_packages_create.dart';
import 'package:final_project/screens/admin/mobitel/weekly_packages/weekly_packages_details.dart';
import 'package:final_project/services/WeeklyPackageService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WeeklyMain extends StatefulWidget {
  const WeeklyMain({Key? key}) : super(key: key);

  @override
  State<WeeklyMain> createState() => _WeeklyMainState();
}

class _WeeklyMainState extends State<WeeklyMain> {
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
            Text("Your weekly packages list is Empty. Please add new one!",
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
      appBar: AppBar(
        title: Text(
            'Weekly packages (${Provider.of<WeeklyPackageData>(context).weeklys.length})'
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Consumer<WeeklyPackageData>(
            builder: (context, weeklyPackageData, child){
              return ListView.builder(
                  itemCount: weeklyPackageData.weeklys.length,
                  itemBuilder: (context, index){
                    counter ++;
                    WeeklyPackages weeklyPackages = weeklyPackageData.weeklys[index];
                    return WeeklyPackageTile(
                      weeklyPackages: weeklyPackages,
                      weeklyPackageData: weeklyPackageData,
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    WeeklyPackagesDetails(weeklyPackages: weeklyPackages,)));
                      },
                    );
                  });
            }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        child: const Icon(
            Icons.add
        ),
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context){
            return const CreateWeeklyPackages();
          });
        },
      ),
    );
  }
}
