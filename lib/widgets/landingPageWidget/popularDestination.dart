// ignore_for_file: prefer_const_constructors, file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReturenCard extends StatelessWidget {
  final String provider;
  final String Img;
  final String title;
  final String check;
  final void Function()? press;
  const ReturenCard(
      {Key? key,
      required this.provider,
      required this.Img,
      required this.title,
      required this.check,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        height: 220,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(.5),
                blurRadius: 20.0,
                spreadRadius: 0.0,
                offset: Offset(5.0, 5.0)),
          ],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 5.0, bottom: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                // height: 20.0,
                padding: EdgeInsets.all(5.0),
                // decoration: BoxDecoration(
                //   color: Colors.white,
                //   boxShadow: [
                //     BoxShadow(
                //         color: Colors.grey.withOpacity(.5),
                //         blurRadius: 20.0,
                //         spreadRadius: 0.0,
                //         offset: Offset(5.0, 5.0)),
                //   ],
                //   borderRadius: BorderRadius.circular(12),
                //   border: Border.all(
                //     color: Colors.deepOrange,
                //     width: 1,
                //   ),
                // ),
                color: Colors.white,
                child: Text(
                  provider,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 15.0,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: Image(
                  image: NetworkImage(Img),
                  height: 50.0,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 13.0,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.normal),
              ),
              FlatButton(
                padding: EdgeInsets.all(5.0),
                onPressed: press,
                child: Text(
                  check,
                  style: TextStyle(fontSize: 15.0),
                ),
                color: Colors.red,
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
