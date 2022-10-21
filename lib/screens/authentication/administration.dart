import 'package:final_project/screens/authentication/login-mobitel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/routers.dart';
import '../TaskPages/service_dash.dart';
import 'login-dialog.dart';

class AdminLoginHome extends StatefulWidget {

  const AdminLoginHome({Key? key}) : super(key: key);
  @override
  State<AdminLoginHome> createState() => _AdminLoginHomeState();

}

class _AdminLoginHomeState extends State<AdminLoginHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Administration Login"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {  },
          ),
          toolbarHeight: 65.2,
          centerTitle: true,
          toolbarOpacity: 0.8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25)),
          ),
          actions: const <Widget>[
            // IconButton(
            //   onPressed: () {
            //     PageNavigator(ctx: context)
            //         .nextPage(page: const DashBoardCustom());
            //     // _key.currentState!.openDrawer();
            //   },
            //   icon: const Icon(Icons.grid_view_outlined),
            // )
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        shadowColor: Colors.black,
                        color: Colors.white,
                        child: SizedBox(
                          width: 300,
                          height: 382,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.red[500],
                                  radius: 108,
                                  child: const CircleAvatar(
                                    backgroundImage: AssetImage(
                                      "assets/images/dialog.jpg",
                                    ),
                                    //NetworkImage
                                    radius: 108,
                                  ), //CircleAvatar
                                ), //CircleAvatar
                                const SizedBox(
                                  height: 10,
                                ), //SizedBox
                                Text(
                                  'Dialog Service',
                                  style: GoogleFonts.dancingScript(
                                    fontSize: 30,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ), //Text
                                const SizedBox(
                                  height: 10,
                                ), //Text
                                const SizedBox(
                                  height: 10,
                                ), //SizedBox
                                SizedBox(
                                  width: 100,

                                  child: OutlinedButton(
                                    onPressed: () {
                                      PageNavigator(ctx: context)
                                          .nextPage(page: const LoginDialog());
                                    },
                                    style: ButtonStyle(
                                        backgroundColor:
                                        MaterialStateProperty.all(Colors.white)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4),
                                      child: Row(
                                        children: const [
                                          Icon(Icons.touch_app, color: Colors.red,),
                                          Text('Enter',style: TextStyle(color: Colors.red),)
                                        ],
                                      ),
                                    ),
                                  ), //RaisedButton
                                ) //SizedBox
                              ],
                            ), //Column
                          ), //Padding
                        ), //SizedBox
                      ),
                    ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    shadowColor: Colors.black,
                    color: Colors.white,
                    child: SizedBox(
                      width: 300,
                      height: 380,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.red[500],
                              radius: 108,
                              child: const CircleAvatar(
                                backgroundImage: AssetImage(
                                  "assets/images/mobitel.jpg",
                                ),
                                //NetworkImage
                                radius: 108,
                              ), //CircleAvatar
                            ), //CircleAvatar
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            Text(
                              'Mobitel Service',
                              style: GoogleFonts.dancingScript(
                                fontSize: 30,
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                              ), //Textstyle
                            ), //Text
                            const SizedBox(
                              height: 10,
                            ), //Text
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            SizedBox(
                              width: 100,

                              child: OutlinedButton(
                                onPressed: () {
                                  PageNavigator(ctx: context)
                                      .nextPage(page: const LoginMobitel());
                                },
                                style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Row(
                                    children: const [
                                      Icon(Icons.touch_app, color: Colors.blue,),
                                      Text('Enter',style: TextStyle(color: Colors.blue),)
                                    ],
                                  ),
                                ),
                              ), //RaisedButton
                            ) //SizedBox
                          ],
                        ), //Column
                      ), //Padding
                    ), //SizedBox
                  ),
                ),
              ],
            ),
          ),
        )
    )
    );
  }
}
