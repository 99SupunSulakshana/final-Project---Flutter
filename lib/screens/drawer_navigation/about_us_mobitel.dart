import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MobitelAbout extends StatefulWidget {
  const MobitelAbout({Key? key}) : super(key: key);

  @override
  State<MobitelAbout> createState() => _MobitelAboutState();
}

class _MobitelAboutState extends State<MobitelAbout> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                "Mobitel Network",
                style: GoogleFonts.poppins(fontSize: 20.0, fontWeight:FontWeight.bold, color: Colors.blue),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                height: 160.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(color: Colors.white, width: 1.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(.5),
                          blurRadius: 20.0,
                          spreadRadius: 0.0,
                          offset: const Offset(5.0, 5.0)),
                    ]),
                child: const Image(
                  height: 150.0,
                  //color: Colors.white,
                  width: double.infinity,
                  image: AssetImage("assets/images/mobitel.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "SLT-Mobitel is Sri Lanka’s National Mobile Service Provider and a fully-owned subsidiary of Sri Lanka Telecom. The company offers mobile telephony services, high-speed broadband, Enterprise Solutions, IDD Services, Mobile Money (mCash) and a host of Value Added Services.",
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(fontSize: 12.0),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "SLT-Mobitel was the pioneer in South Asia to launch the first Super-3.5G HSPA network in South Asia in 2007, and subsequently trialed HSPA+, MIMO (Multiple Input Multiple Output) in 2009, another first in the region, Mobitel went on to demonstrate 4G-LTE technology also for the first time in South Asia in 2011.",
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(fontSize: 12.0),
              ),
              Text(
                "Accordingly, SLT-Mobitel launched its 4G-LTE Network in 2013 to provide unparalleled broadband experience to Sri Lankans. Keeping ahead with pioneering new technologies, SLT-Mobitel trialed 4.5G LTE-Advanced Pro Technology with CA (Carrier Aggregation) of three bands, again for the first time in South Asia in 2016. In 2017, SLT-Mobitel was able to deploy the first Sub-1G Mobile Broadband Network in Sri Lanka based on 900MHz spectrum innovatively to provide superior coverage some rural areas of the country. In 2018 Mobitel launched the First Commercial 4.5G/4G+ Mobile Network in South Asia.",
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(fontSize: 12.0),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Mobitel Helps & Contact",
                style: GoogleFonts.poppins(fontSize: 20.0, color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              DataTable(columns: const <DataColumn>[
                DataColumn(
                    label: Text('CONTACT',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal))),
                DataColumn(
                    label: Text('INFO',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal))),
              ], rows: <DataRow>[
                DataRow(cells: [
                  DataCell(Text('Customer Service')),
                  DataCell(Text('+94 (0) 712755777')),
                ]),
                DataRow(cells: [
                  DataCell(Text('General Line')),
                  DataCell(TextButton(onPressed: () => {
                    launch("+94 (0) 112330550")
                  },child: Text('+94 (0) 112330550', style: GoogleFonts.poppins(color: Colors.blue)))),
                ]),
                DataRow(cells: [
                  DataCell(Text('Customer Service ')),
                  DataCell(TextButton(onPressed: () => {
                    launch("tel: +94 (0) 712755777 ")
                  },child: Text(' +94 (0) 712755777 ', style: GoogleFonts.poppins(color: Colors.blue)))),
                ]),
              ]),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Good Luck!",
                style: GoogleFonts.pacifico(fontSize: 20.0),
              ),
            ],
          ),
        ));
  }
}
