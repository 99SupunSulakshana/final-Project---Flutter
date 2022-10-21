import 'package:final_project/model/Code.dart';
import 'package:final_project/provider/mobitel/hotcodesdata.dart';
import 'package:final_project/screens/admin/mobitel/hotlines/create_hotline.dart';
import 'package:final_project/screens/admin/mobitel/hotlines/hotline_details.dart';
import 'package:final_project/services/code_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../ListTiles/hotcode_tile.dart';

class HotCodesMain extends StatefulWidget {
  const HotCodesMain({Key? key}) : super(key: key);

  @override
  State<HotCodesMain> createState() => _HotCodesMainState();
}

class _HotCodesMainState extends State<HotCodesMain> {
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
      appBar: AppBar(
        title: Text(
            'HotLine Codes (${Provider.of<HotCodesData>(context).codes.length})'
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Consumer<HotCodesData>(
            builder: (context, hotCodeData, child){
              return ListView.builder(
                  itemCount: hotCodeData.codes.length,
                  itemBuilder: (context, index){
                    counter ++;
                    Code code = hotCodeData.codes[index];
                    return CodeTile(
                      code:code,
                      hotCodesData: hotCodeData,
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    HotLineDetails(code)));
                      },
                    );
                  });
            }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        child: const Icon(
            Icons.add
        ),
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context){
            return const CreateCode();
          });
        },
      ),
    );
  }
}
