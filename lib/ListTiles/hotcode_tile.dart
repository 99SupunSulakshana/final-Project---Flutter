import 'package:final_project/provider/mobitel/hotcodesdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/Code.dart';
import '../provider/mobitel/howtoguidedata.dart';
import '../utils/snack_message.dart';

class CodeTile extends StatelessWidget {
  final Code code;
  final HotCodesData hotCodesData;
  final VoidCallback onTap;

  CodeTile({Key? key,required this.onTap, required this.code, required this.hotCodesData})
      : super(key: key);

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
          code.code,
          style: GoogleFonts.poppins(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold)
      ),
      subtitle: Text(
          code.code_title,
          style: GoogleFonts.poppins(fontSize: 10.0, color: Colors.grey, fontWeight: FontWeight.bold)
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete_forever, color: Colors.red,),
        onPressed: () {
          //  tasksData.deleteTask(task);
          hotCodesData.deleteCode(code);
          showMessage(
              message: "Code deleted successfully !",
              context: context);
        },
      ),
      selected: true,
      selectedColor: Colors.purpleAccent,
      selectedTileColor: Colors.white60,
    );
  }
}
