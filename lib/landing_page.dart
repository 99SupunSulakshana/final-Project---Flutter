// ignore_for_file: avoid_unnecessary_containers, prefer_final_fields, sized_box_for_whitespace, unused_field, import_of_legacy_library_into_null_safe, avoid_print, prefer_const_constructors, unused_local_variable, non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_project/model/Customer.dart';
import 'package:final_project/provider/Shared_preferences/shared_preferencesProvider.dart';
import 'package:final_project/screens/TaskPages/service_dash.dart';
import 'package:final_project/screens/admin/admin-dash.dart';
import 'package:final_project/screens/advertisements/main_add.dart';
import 'package:final_project/screens/drawer_navigation/aboutUs.dart';
import 'package:final_project/screens/drawer_navigation/my_activations/ActivationHome.dart';
import 'package:final_project/screens/drawer_navigation/my_activations/my_activation.dart';
import 'package:final_project/screens/drawer_navigation/my_activations/my_details/my_details.dart';
import 'package:final_project/screens/drawer_navigation/notifications.dart';
import 'package:final_project/screens/drawer_navigation/others.dart';
import 'package:final_project/screens/drawer_navigation/privacy_policy.dart';
import 'package:final_project/screens/drawer_navigation/setting/settings.dart';
import 'package:final_project/screens/drawer_navigation/terms_conditions.dart';
import 'package:final_project/screens/popular_sec/popular_sec.dart';
import 'package:final_project/screens/special_section/special_main.dart';
import 'package:final_project/utils/routers.dart';
import 'package:final_project/widgets/landingPageWidget/popularDestination.dart';
import 'package:final_project/widgets/landingPageWidget/specialCards.dart';
import 'package:final_project/widgets/drawer_navigation/my_drawer_header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/gifts/gift_main.dart';
import 'widgets/landingPageWidget/SessionBreker.dart';
import 'widgets/landingPageWidget/SpecialDestination.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  // var currentPage = DrawerSections.dashboard;
  final List<String> imgList = [
    // 'https://ichef.bbci.co.uk/news/1024/branded_news/55A2/production/_112422912_tv061593010.jpg',
    // 'https://ichef.bbci.co.uk/news/1024/branded_news/55A2/production/_112422912_tv061593010.jpg',
    'assets/images/mobitel.jpg',
    'assets/images/dialog.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      key: _key,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.deepPurple,
          title: Text(
            "All in ONE",
            textDirection: TextDirection.ltr,
            style: GoogleFonts.pacifico(fontSize: 20.0),
          ),
          // leading: IconButton(
          //   icon: Icon(Icons.menu_open),
          //   onPressed: () {
          //   },
          // ),
          actions: [
            Stack(
              children: <Widget>[
                Positioned(
                  //  top: 0.0,
                  child: IconButton(
                      onPressed: () {
                        //SharedDataProvider().logOut(context);
                      },
                      icon: Icon(Icons.notifications_active)),
                ),
                Positioned(
                  top: 0,
                  right: 285,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    child: Text('24'),
                  ), //CircularAvatar
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                PageNavigator(ctx: context)
                    .nextPage(page: const DashBoardCustom());
                // _key.currentState!.openDrawer();
              },
              icon: Icon(Icons.grid_view_outlined),
            )
          ],
          elevation: 0,
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              MyHeaderDrawer(),
              ListTile(
                leading: Icon(
                  Icons.home,
                ),
                title: const Text('My Details'),
                onTap: () {
                  //Navigator.pop(context);
                  PageNavigator(ctx: context).nextPage(page: MyDetails());
                },
              ),
              //Divider(),
              ListTile(
                leading: Icon(
                  Icons.local_activity,
                ),
                title: const Text('My Activations'),
                onTap: () {
                  PageNavigator(ctx: context).nextPage(page: ActivationHome());
                },
              ),
              ListTile(
                leading: Icon(Icons.notification_add),
                title: const Text('Notifications'),
                onTap: () {
                  PageNavigator(ctx: context).nextPage(page: Activations());
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.get_app,
                ),
                title: const Text('Add List'),
                onTap: () {
                  PageNavigator(ctx: context).nextPage(page: Others());
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                ),
                title: const Text('Settings'),
                onTap: () {
                  PageNavigator(ctx: context).nextPage(page: Settings());
                },
              ),
              Divider(
                color: Colors.black54,
              ),
              ListTile(
                leading: Icon(Icons.library_add_check),
                title: const Text('Terms & Conditions'),
                onTap: () {
                  PageNavigator(ctx: context).nextPage(page: const Terms());
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.privacy_tip,
                ),
                title: const Text('Privacy & Policy'),
                onTap: () {
                  PageNavigator(ctx: context).nextPage(page: const Privacy());
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.details,
                ),
                title: const Text('About Us'),
                onTap: () {
                  PageNavigator(ctx: context).nextPage(page: AboutUs());
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                ),
                title: const Text('Log Out'),
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
                                    SharedDataProvider().logOut(context);
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
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage("assets/images/png07.png"),
                  fit: BoxFit.fitHeight)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    viewportFraction: 1.0,
                    onPageChanged: (index, carouselReason) {
                      setState(() {
                        _current = index;
                      });
                    },
                    enlargeCenterPage: true,
                  ),
                  items: imgList
                      .map((item) => Container(
                            child: Container(
                              margin: const EdgeInsets.all(10.0),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5.0)),
                                  child: Stack(
                                    children: <Widget>[
                                      Image.asset(item,
                                          fit: BoxFit.cover, width: 1000.0),
                                      Positioned(
                                        bottom: 0.0,
                                        left: 0.0,
                                        right: 0.0,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color.fromARGB(200, 0, 0, 0),
                                                Color.fromARGB(0, 0, 0, 0)
                                              ],
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter,
                                            ),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10.0, horizontal: 20.0),
                                          child: Text(
                                            ' ',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ))
                      .toList(),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      PageNavigator(ctx: context)
                          .nextPage(page: const Addvertisement());
                    },
                    child: Text('More',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map(
                    (entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 7.0,
                          height: 7.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.deepPurple)
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.4)),
                        ),
                      );
                    },
                  ).toList(),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(10.0),
                  width: double.infinity,
                  height: 60.0,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(.5),
                            blurRadius: 20.0,
                            spreadRadius: 0.0,
                            offset: Offset(5.0, 5.0)),
                      ]),
                  child: GestureDetector(
                    onTap: () {
                      PageNavigator(ctx: context).nextPage(page: const Gift());
                    },
                    child: Text.rich(TextSpan(
                      text: "Weekly Specials Mobitel & Dialog\n",
                      style: TextStyle(color: Colors.white),
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        TextSpan(
                          text: "Get SPECIAL GIFT Packs",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(
                        left: 5.0, bottom: 10.0, right: 12.0),
                    alignment: Alignment.topLeft,
                    child: const SpecialServices(
                      title: "Application's Main Services",
                      subtitle: "Dialog & Mobitel",
                    )),
                Container(
                  height: 144.0,
                  margin: const EdgeInsets.only(
                      left: 16.0, right: 16.0, bottom: 10.0),
                  child: Column(children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 8.0),
                            padding: EdgeInsets.only(left: 8.0),
                            height: 64.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.0),
                                border:
                                    Border.all(color: Colors.white, width: 1.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(.5),
                                      blurRadius: 20.0,
                                      spreadRadius: 0.0,
                                      offset: Offset(5.0, 5.0)),
                                ]),
                            child: Row(
                              children: const <Widget>[
                                Icon(
                                  Icons.payment,
                                  color: Colors.deepPurple,
                                  size: 40.0,
                                ),
                                SpecialServices(
                                  title: "Payment",
                                  subtitle: "Dialog & Mobitel",
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 8.0),
                            padding: const EdgeInsets.only(left: 8.0),
                            height: 64.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.0),
                                border:
                                    Border.all(color: Colors.white, width: 1.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(.5),
                                      blurRadius: 20.0,
                                      spreadRadius: 0.0,
                                      offset: Offset(5.0, 5.0)),
                                ]),
                            child: Row(
                              children: const <Widget>[
                                Icon(
                                  Icons.medical_services,
                                  color: Colors.deepPurple,
                                  size: 40.0,
                                ),
                                SpecialServices(
                                  title: "eChanneling",
                                  subtitle: "Dialog & Mobitel",
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 8.0),
                            padding: EdgeInsets.only(left: 8.0),
                            height: 64.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(.5),
                                    blurRadius: 20.0,
                                    spreadRadius: 0.0,
                                    offset: Offset(5.0, 5.0)),
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                              border:
                                  Border.all(color: Colors.white, width: 1.0),
                            ),
                            child: Row(
                              children: const <Widget>[
                                Icon(
                                  Icons.book_sharp,
                                  color: Colors.deepPurple,
                                  size: 40.0,
                                ),
                                SpecialServices(
                                  title: "Loan",
                                  subtitle: "Dialog & Mobitel",
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 8.0),
                            padding: const EdgeInsets.only(left: 8.0),
                            height: 64.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(.5),
                                    blurRadius: 20.0,
                                    spreadRadius: 0.0,
                                    offset: Offset(5.0, 5.0)),
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                              border:
                                  Border.all(color: Colors.white, width: 1.0),
                            ),
                            child: Row(
                              children: const <Widget>[
                                Icon(
                                  Icons.assistant_outlined,
                                  color: Colors.deepPurple,
                                  size: 40.0,
                                ),
                                SpecialServices(
                                  title: "D Assists",
                                  subtitle: "Dialog & Mobitel",
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),

                // Popular Section.............
                Container(
                  margin: const EdgeInsets.only(
                      left: 12.0, bottom: 10.0, right: 12.0),
                  alignment: Alignment.topLeft,
                  child: SectionBreakers(
                    title: 'Special Section',
                    more: 'More',
                    press: () {
                      PageNavigator(ctx: context)
                          .nextPage(page: const SpecialSec());
                    },
                  ),
                ),
                Container(
                  height: 200.0,
                  child: ListView.builder(
                      itemCount: populars.length,
                      padding: EdgeInsets.only(left: 16, right: 16),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return ReturenCard(
                          title: populars[index].name,
                          Img: populars[index].image,
                          check: 'CHECK',
                          press: () {},
                          provider: 'Mobitel',
                        );
                      }),
                ),
                // Mobile Section
                Container(
                  margin: const EdgeInsets.only(
                      left: 12.0, bottom: 10.0, right: 12.0, top: 10.0),
                  alignment: Alignment.topLeft,
                  child: SectionBreakers(
                    title: "Most Popular Section",
                    more: "More",
                    press: () {
                      PageNavigator(ctx: context)
                          .nextPage(page: const PopularSec());
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(.5),
                          blurRadius: 20.0,
                          spreadRadius: 0.0,
                          offset: Offset(5.0, 5.0)),
                    ],
                    // borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  height: 250,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 16.0, bottom: 10.0),
                    itemCount: populars.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return PopularCard(
                        title: populars[index].name,
                        Img: populars[index].image,
                        Description: populars[index].country,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
