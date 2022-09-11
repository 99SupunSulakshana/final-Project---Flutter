// ignore_for_file: file_names

import 'package:final_project/screens/TaskPages/home_page.dart';
import 'package:final_project/screens/admin/admin-aboutus.dart';
import 'package:final_project/screens/admin/admin_guides.dart';
import 'package:final_project/screens/admin/admin_privacy.dart';
import 'package:final_project/utils/routers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({Key? key}) : super(key: key);

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.deepPurple,
        title: Text(
          "All in ONE",
          textDirection: TextDirection.ltr,
          style: GoogleFonts.pacifico(fontSize: 20.0),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout_outlined))
        ],
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage("assets/images/png08.png"),
                fit: BoxFit.fitHeight)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  height: 160.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: const DecorationImage(
                          image: AssetImage("assets/images/png09.png")),
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
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          PageNavigator(ctx: context)
                              .nextPage(page: const HomePage());
                        },
                        child: Text(
                          "ADVERTISEMENTS",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.raleway(
                              fontSize: 20.0,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  height: 160.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: const DecorationImage(
                        image: AssetImage("assets/images/png10.png"),
                      ),
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
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          PageNavigator(ctx: context)
                              .nextPage(page: PrivacyAdminPage());
                        },
                        child: Text(
                          "WEEKLY CUSTOMER'S PACKAGES",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.raleway(
                              fontSize: 20.0,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                  // child: const MobitelBalance()
                  ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  height: 160.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                    children: <Widget>[
                      Text(
                        "SPECIAL PACKAGES",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                            fontSize: 20.0,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                  // child: const MobitelBalance()
                  ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  height: 160.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                    children: <Widget>[
                      Text(
                        "CUSTOMER'S BESTS",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                            fontSize: 20.0,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                  // child: const MobitelBalance()
                  ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  height: 160.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                    children: <Widget>[
                      Text(
                        "CUSTOMERS'S PACKAGES",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                            fontSize: 20.0,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                  // child: const MobitelBalance()
                  ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  height: 160.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                    children: <Widget>[
                      Text(
                        "CUSTOMER'S SERVICES",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                            fontSize: 20.0,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                  // child: const MobitelBalance()
                  ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  height: 160.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                    children: <Widget>[
                      Text(
                        "LOAN DETAILS",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                            fontSize: 20.0,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                  // child: const MobitelBalance()
                  ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  height: 160.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                    children: <Widget>[
                      Text(
                        "OFFERS",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                            fontSize: 20.0,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                  // child: const MobitelBalance()
                  ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  height: 160.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                    children: <Widget>[
                      Text(
                        "CONNECTION CODES",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                            fontSize: 20.0,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                  // child: const MobitelBalance()
                  ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  height: 160.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                    children: <Widget>[
                      GestureDetector(
                        onTap:(){
                          PageNavigator(ctx: context)
                              .nextPage(page: const AdminGuides());
                        },
                        child: Text(
                          "CUSTOMER'S GUIDES",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.raleway(
                              fontSize: 20.0,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                  // child: const MobitelBalance()
                  ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  height: 160.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                    children: <Widget>[
                      Text(
                        "TERMS & CONDITIONS",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                            fontSize: 20.0,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                  // child: const MobitelBalance()
                  ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  height: 160.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                    children: <Widget>[
                      GestureDetector(
                        onTap:(){
                          PageNavigator(ctx: context)
                              .nextPage(page: AdminAboutUs());
                            },
                        child: Text(
                          "ABOUT US INFO",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.raleway(
                              fontSize: 20.0,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                  // child: const MobitelBalance()
                  ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  height: 160.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                    children: <Widget>[
                      Text(
                        "PAYMENT DETAILS",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                            fontSize: 20.0,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                  // child: const MobitelBalance()
                  ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  height: 160.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                    children: <Widget>[
                      Text(
                        "TRANSACTION DETAILS",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                            fontSize: 20.0,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                  // child: const MobitelBalance()
                  ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  height: 160.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                    children: <Widget>[
                      Text(
                        "NEWS",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                            fontSize: 20.0,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                  // child: const MobitelBalance()
                  ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  height: 160.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                    children: <Widget>[
                      Text(
                        "USER DETAILS",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                            fontSize: 20.0,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                  // child: const MobitelBalance()
                  ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
