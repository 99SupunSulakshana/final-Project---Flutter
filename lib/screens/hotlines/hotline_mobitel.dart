// ignore_for_file: avoid_unnecessary_containers, deprecated_member_use

import 'package:final_project/ListTiles/hotline_user.dart';
import 'package:final_project/model/news.dart';
import 'package:final_project/utils/routers.dart';
import 'package:final_project/widgets/dialog_popular_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../ListTiles/hotcode_tile.dart';
import '../../model/Code.dart';
import '../../provider/mobitel/hotcodesdata.dart';
import '../../services/code_services.dart';
import 'hotline_details.dart';


class MobitelHot extends StatefulWidget {
  const MobitelHot({
    Key? key,
  }) : super(key: key);
  //final News package;
  @override
  State<MobitelHot> createState() => _MobitelHotState();
}

class _MobitelHotState extends State<MobitelHot> {
  List<Code>? codes;
  int counter = 0;
  getCode() async {
    codes = await CodeService.getCode();
    Provider.of<HotCodesData>(context, listen: false).codes = codes!;
    setState((){});
  }

  @override
  void initState(){
    super.initState();
    getCode();
  }
  @override
  Widget build(BuildContext context) {

    return codes == null
        ?  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            Text("Your Code list is Empty. Please add new one!",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 20.0,
                  color: Colors.grey
              ),
            )
          ],
        ),
      ),
    ): Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        color: Colors.transparent,
        child: Consumer<HotCodesData>(
            builder: (context, hotCodeData, child){
              return ListView.builder(
                  itemCount: hotCodeData.codes.length,
                  itemBuilder: (context, index){
                    counter ++;
                    Code code = hotCodeData.codes[index];
                    return HotLineUserTile(
                      code:code,
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    HotLinesDetails(code: code,)));
                      },
                    );
                  });
            }
        ),
      ),
    );
  }
}
