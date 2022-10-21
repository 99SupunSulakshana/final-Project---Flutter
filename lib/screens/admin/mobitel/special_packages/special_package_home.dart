import 'package:final_project/screens/admin/mobitel/prediction-ml/ml_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/routers.dart';

class SpecialPackagesHome extends StatefulWidget {
  const SpecialPackagesHome({Key? key}) : super(key: key);

  @override
  State<SpecialPackagesHome> createState() => _SpecialPackagesHomeState();
}

class _SpecialPackagesHomeState extends State<SpecialPackagesHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          title: Text(
            "Special packages",
            textDirection: TextDirection.ltr,
            style: GoogleFonts.poppins(fontSize: 20.0),
          ),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
            IconButton(onPressed: () {
              PageNavigator(ctx: context)
                  .nextPage(page: MLHome());
            }, icon: const Icon(Icons.calculate_outlined, color: Colors.white,)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.logout_outlined)),
          ],
          elevation: 0 ,
        ),
      ),
    );
  }
}
