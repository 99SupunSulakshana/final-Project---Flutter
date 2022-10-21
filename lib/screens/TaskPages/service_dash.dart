// ignore_for_file: non_constant_identifier_names

import 'package:final_project/landing_page.dart';
import 'package:final_project/screens/DetailsScreen.dart';
import 'package:final_project/screens/eChanneling/echannelingMain.dart';
import 'package:final_project/screens/hotlines/hotline_main.dart';
import 'package:final_project/screens/how_to_guides/main_guides.dart';
import 'package:final_project/screens/loan_services/loan_main.dart';
import 'package:final_project/screens/offer/offers_main.dart';
import 'package:final_project/utils/routers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../landing_test.dart';
import '../authentication/login.dart';
import '../services/services_main.dart';

class DashBoardCustom extends StatefulWidget {
  const DashBoardCustom({Key? key}) : super(key: key);

  @override
  State<DashBoardCustom> createState() => _DashBoardCustomState();
}

class _DashBoardCustomState extends State<DashBoardCustom> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              height: size.height * 0.45,
              decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  image: DecorationImage(
                      image: AssetImage("assets/images/png01.png"))),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Column(children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 40.0,
                    width: 40.0,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    // child:
                    child: PopupMenuButton(
                        itemBuilder: (context) => [
                              PopupMenuItem(
                                child: Text("Logout"),
                                value: 1,
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        title: const Text(
                                          'Are You Want Logout?',
                                          textAlign: TextAlign.justify,
                                        ),
                                        content: const Text(
                                            "It You want to log out this application, press  YES "),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                // Navigator.pop(context);
                                                Navigator.of(context)
                                                    .pushAndRemoveUntil(
                                                  CupertinoPageRoute(
                                                      builder: (context) => LoginPage()
                                                  ),
                                                      (_) => false,
                                                );
                                              },
                                              child: const Text('YES')),
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text('CANCEL')),
                                        ],
                                      ));
                                },
                              ),
                              PopupMenuItem(
                                child: Text("Home Screen"),
                                value: 2,
                                onTap: (){
                                  PageNavigator(ctx: context).nextPage(page: LandingPage());
                                },
                              )
                            ]),
                  ),
                ),
                Text(
                  "Hi\n Customer",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                // Container(
                //   margin: const EdgeInsets.symmetric(vertical: 30.0),
                //   padding:
                //       const EdgeInsets.symmetric(horizontal: 30, vertical: 3.0),
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(30.0)),
                //   child: const TextField(
                //     decoration: InputDecoration(
                //         hintText: "Search Here",
                //         icon: Icon(Icons.search),
                //         border: InputBorder.none),
                //   ),
                // ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .85,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20.0,
                    children: <Widget>[
                      CategoryCard(
                        title: "Packages",
                        Img: "assets/images/customer_packages.png",
                        press: () {
                          PageNavigator(ctx: context)
                              .nextPage(page: const DetailsScreen());
                        },
                      ),
                      CategoryCard(
                        title: "Services",
                        Img: "assets/images/customer_services.png",
                        press: () {
                          PageNavigator(ctx: context)
                              .nextPage(page: const ServiceScreen());
                        },
                      ),
                      CategoryCard(
                        title: "E-Channeling",
                        Img: "assets/images/hospital.png",
                        press: () {
                          PageNavigator(ctx: context)
                              .nextPage(page: const EchannelMain());
                        },
                      ),
                      CategoryCard(
                        title: "Broadband Services",
                        Img: "assets/images/png04.png",
                        press: () {},
                      ),
                      CategoryCard(
                        title: "Loan Services",
                        Img: "assets/images/loan.png",
                        press: () {
                          PageNavigator(ctx: context)
                              .nextPage(page: const Loans());
                        },
                      ),
                      CategoryCard(
                        title: "Offers",
                        Img: "assets/images/offers.png",
                        press: () {
                          PageNavigator(ctx: context)
                              .nextPage(page: const Offers());
                        },
                      ),
                      CategoryCard(
                        title: "Hot Connection Numbers",
                        Img: "assets/images/codes.png",
                        press: () {
                          PageNavigator(ctx: context)
                              .nextPage(page: const HotLines());
                        },
                      ),
                      CategoryCard(
                        title: "How To Guides",
                        Img: "assets/images/guides.png",
                        press: () {
                          PageNavigator(ctx: context)
                              .nextPage(page: const Guides());
                        },
                      ),
                      CategoryCard(
                        title: "Digital Assistant",
                        Img: "assets/images/png03.png",
                        press: () {},
                      ),
                      CategoryCard(
                        title: "Customer-Care Agent",
                        Img: "assets/images/png04.png",
                        press: () {},
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}


class CategoryCard extends StatelessWidget {
  final String Img;
  final String title;
  final void Function()? press;
  const CategoryCard({
    Key? key,
    required this.Img,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        height: 100.0,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 30),
              blurRadius: 40.0,
              spreadRadius: -23,
              color: Colors.black,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  Image(
                    image: AssetImage(Img),
                  ),
                  const Spacer(),
                  Text(title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontSize: 10.0))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
