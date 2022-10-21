import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/weeklyPackges.dart';
import '../provider/mobitel/weeklyPackageData.dart';
import '../utils/snack_message.dart';

class WeeklyPackageUsersTile extends StatelessWidget {
  final WeeklyPackages weeklyPackages;
  final VoidCallback onTap;
  final WeeklyPackageData weeklyPackageData;
  const WeeklyPackageUsersTile({Key? key, required this.weeklyPackages, required this.weeklyPackageData, required this.onTap}) : super(key: key);

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
        icon: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.red,),
        onPressed: () {

        },
      ),
      selected: true,
      selectedColor: Colors.purpleAccent,
      selectedTileColor: Colors.white60,
    );
  }
}
