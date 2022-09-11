import 'package:final_project/screens/authentication/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/routers.dart';
import '../../widgets/text_field.dart';

class LoginMobitel extends StatefulWidget {
  const LoginMobitel ({Key? key}) : super(key: key);

  @override
  State<LoginMobitel > createState() => _LoginMobitelState();
}

class _LoginMobitelState extends State<LoginMobitel> {
  final TextEditingController _email = TextEditingController(text: "s@gmail.com");
  final TextEditingController _password = TextEditingController(text: "123");

  @override
  void dispose() {
    _email.clear();
    _password.clear();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width
            ),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.white
                ],
               begin: Alignment.topLeft,
               end: Alignment.centerRight
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 36.0, horizontal: 24.0
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:<Widget> [
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
                                    const PopupMenuItem(
                                      child: Text("Logout"),
                                      value: 1,
                                    ),
                                    const PopupMenuItem(
                                      child: Text("Customer Login"),
                                      value: 2,
                                    ),
                                    const PopupMenuItem(
                                      child: Text("Back to Main"),
                                      value: 3,
                                    )
                                  ]),
                            ),
                          ),
                          Text(
                            "Mobitel",
                            textDirection: TextDirection.ltr,
                            style: GoogleFonts.pacifico(
                                fontSize: 40.0,
                            color: Colors.white),
                          ),
                          Text(
                            "Administration login",
                            textDirection: TextDirection.ltr,
                            style: GoogleFonts.adamina(
                                fontSize: 20.0,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                ),
                Expanded(
                  flex: 8,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0)
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          const Image(
                            image: AssetImage("assets/images/mobitel.jpg"),
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                          customTextField(
                            lable: "Administrator's username",
                            textType: TextInputType.text,
                            controller: _email,
                            hint: 'Enter you valid username',
                          ),
                          customTextField(
                            lable: "Administrator's password",
                            textType: TextInputType.visiblePassword,
                            controller: _password,
                            hint: 'Enter you valid password',
                            obscureText: true
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: RaisedButton(
                              onPressed: (){

                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)
                              ),
                              color: Colors.blue,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  "Login",
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Divider(
                              thickness: 2,
                              indent: 20,
                              endIndent: 20,
                              color: Color.fromARGB(255, 196, 196, 196),
                              height: 20,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              PageNavigator(ctx: context)
                                  .nextPage(page: const RegisterPage());
                            },
                            child: const Text(
                              "Do you need Help?",
                              style: TextStyle(
                                  color: Colors.blue,
                                fontSize: 15.0,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),)
              ],
            ),
          ),
        )
      ),
    );
  }
}
