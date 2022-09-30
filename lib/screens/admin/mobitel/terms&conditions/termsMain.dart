import 'package:final_project/provider/mobitel/termsData.dart';
import 'package:final_project/screens/admin/mobitel/terms&conditions/termsCreate.dart';
import 'package:final_project/screens/admin/mobitel/terms&conditions/termsDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../ListTiles/termsTile.dart';
import '../../../../model/terms.dart';
import '../../../../services/terms_services.dart';
import '../../../../utils/routers.dart';
import '../admin-dash.dart';

class TermsMain extends StatefulWidget {
  const TermsMain({Key? key}) : super(key: key);

  @override
  State<TermsMain> createState() => _TermsMainState();
}

class _TermsMainState extends State<TermsMain> {
  List<Terms>? termss;
  int counter = 0;
  getTerms() async {
    termss = await TermsService.getTerms();
    Provider.of<TermsData>(context, listen: false).termss = termss!;
    setState((){});
  }

  @override
  void initState(){
    super.initState();
    getTerms();
  }
  @override
  Widget build(BuildContext context) {
    return termss == null
        ? Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Your terms & conditions list is Empty. Please add new one!",
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
        title: Text("Terms & conditions  (${Provider.of<TermsData>(context).termss.length})"),
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
        child: Consumer<TermsData>(
            builder: (context, termData, child){
              return ListView.builder(
                  itemCount: termData.termss.length,
                  itemBuilder: (context, index){
                    counter ++;
                    Terms terms = termData.termss[index];
                    return TermsTile(
                      terms: terms,
                      termsData: termData,
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TermsDetails(terms: terms)));
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
            return const CreateTerms();
          });
        },
      ),
    );
  }
}
