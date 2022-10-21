import 'package:final_project/model/weeklyPackges.dart';
import 'package:final_project/provider/mobitel/weeklyPackageData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/snack_message.dart';

class WeeklyPackageTile extends StatelessWidget {
  final WeeklyPackages weeklyPackages;
  final VoidCallback onTap;
  final WeeklyPackageData weeklyPackageData;
  const WeeklyPackageTile({Key? key, required this.weeklyPackages, required this.weeklyPackageData, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      visualDensity: const VisualDensity(vertical: 4),
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(Icons.album, color: Colors.pink,size: 25.0,),
      ),
      title: Text(
          weeklyPackages.package_title,
          style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold)
      ),
      subtitle: Text(
          weeklyPackages.cost,
          style: GoogleFonts.poppins(fontSize: 10.0, color: Colors.grey, fontWeight: FontWeight.bold)
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete_forever, color: Colors.red,),
        onPressed: () {
          //  tasksData.deleteTask(task);
          weeklyPackageData.deleteWeeklyPackages(weeklyPackages);
          showMessage(
              message: "Weekly packages deleted successfully !",
              context: context);
        },
      ),
      selected: true,
      selectedColor: Colors.purpleAccent,
      selectedTileColor: Colors.white60,
    );
  }
}
