import 'package:final_project/provider/mobitel/privacydata.dart';
import 'package:final_project/screens/admin/mobitel/privacy/createPrivacy.dart';
import 'package:final_project/screens/admin/mobitel/privacy/privacyDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../ListTiles/privacyTile.dart';
import '../../../../model/privacy.dart';
import '../../../../services/privacy_services.dart';
import '../../../../utils/routers.dart';
import '../admin-dash.dart';

class PrivacyMain extends StatefulWidget {
  const PrivacyMain({Key? key}) : super(key: key);

  @override
  State<PrivacyMain> createState() => _PrivacyMainState();
}

class _PrivacyMainState extends State<PrivacyMain> {
  List<Privacy>? privacys;
  int counter = 0;
  getPrivacy() async {
    privacys = await PrivacyService.getPrivacy();
    Provider.of<PrivacyData>(context, listen: false).privacys = privacys!;
    setState((){});
  }

  @override
  void initState(){
    super.initState();
    getPrivacy();
  }
  @override
  Widget build(BuildContext context) {
    return privacys == null
        ? Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Your privacy & policies list is Empty. Please add new one!",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 20.0,
                    color: Colors.grey
                ),
              ),
            )
          ],
        ),
      ),
    ) :
    Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Privacy & Policy rules  (${Provider.of<PrivacyData>(context).privacys.length})"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () {
            PageNavigator(ctx: context)
                .nextPage(page:  AdminDashboard());
          },
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body:Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Consumer<PrivacyData>(
            builder: (context, privacyData, child){
              return ListView.builder(
                  itemCount: privacyData.privacys.length,
                  itemBuilder: (context, index){
                    counter ++;
                    Privacy privacy = privacyData.privacys[index];
                    return PrivacyTile(
                      privacy: privacy,
                      privacyData: privacyData,
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PrivacyDetails(privacy)));
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
            return const CreatePrivacy();
          });
        },
      ),
    );
  }
}
