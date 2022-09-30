// ignore_for_file: unused_import, avoid_unnecessary_containers, non_constant_identifier_names, unused_local_variable

import 'package:final_project/provider/mobitel/advertisementdata.dart';
import 'package:final_project/screens/admin/mobitel/advertisements/create_adds.dart';
import 'package:final_project/services/advertisement_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../ListTiles/advertisementTile.dart';
import '../../../../model/advertisements.dart';
import '../../../../utils/routers.dart';
import '../admin-dash.dart';
import 'advertisementDetails.dart';

class Addvertisement extends StatefulWidget {
  const Addvertisement({Key? key}) : super(key: key);

  @override
  State<Addvertisement> createState() => _AddvertisementState();
}

class _AddvertisementState extends State<Addvertisement> {
  List<Advertisement>? advertisements;
  int counter = 0;
  getAdvertisements() async {
    advertisements = await AdvertisementServices.getAdvertisement();
    Provider.of<AdvertisementData>(context, listen: false).advertisements = advertisements!;
    setState((){});
}

@override
void initState(){
    super.initState();
    getAdvertisements();
}

  @override
  Widget build(BuildContext context) {
    return advertisements == null
      ? Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            Text("Your Advertisement lis is Empty. Please add new one!",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 20.0,
                color: Colors.grey
              ),
            )
          ],
        ),
      ),
    ) :
     Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Advertisements (${Provider.of<AdvertisementData>(context).advertisements.length})"),
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
         child: Consumer<AdvertisementData>(
             builder: (context, advertisementData, child){
               return ListView.builder(
                   itemCount: advertisementData.advertisements.length,
                   itemBuilder: (context, index){
                     counter ++;
                     Advertisement advertisement = advertisementData.advertisements[index];
                     return AddTile(
                       advertisement: advertisement,
                       advertisementData: advertisementData,
                       onTap: (){
                         Navigator.push(
                             context,
                             MaterialPageRoute(
                                 builder: (context) => AddDetails(advertisement)));
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
             return const CreateAdds();
           });
         },
       ),
    );
  }
}

