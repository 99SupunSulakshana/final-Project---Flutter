import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/Code.dart';

class HotLineUserTile extends StatelessWidget {
  final Code code;
  final VoidCallback onTap;
  const HotLineUserTile({Key? key, required this.code, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
        color: Colors.transparent,
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          onTap: onTap,
          visualDensity: const VisualDensity(vertical: 4),
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.album, color: Colors.pink,size: 25.0,),
          ),
          title: GestureDetector(
            onTap: (){
              launch("tel: ${code.code}");
            },
            child: Text(
                code.code,
                style: GoogleFonts.poppins(fontSize: 18.0, color: Colors.black, fontWeight: FontWeight.bold)
            ),
          ),
          subtitle: Text(
              code.code_title,
              style: GoogleFonts.poppins(fontSize: 10.0, color: Colors.grey, fontWeight: FontWeight.bold)
          ),
          trailing: IconButton(
            icon: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.red,),
            onPressed: onTap
          ),
          selected: true,
          selectedColor: Colors.purpleAccent,
          selectedTileColor: Colors.transparent,
        ),
      );
  }
}
