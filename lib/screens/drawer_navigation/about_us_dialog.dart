import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class DialogAbout extends StatefulWidget {
  const DialogAbout({Key? key}) : super(key: key);

  @override
  State<DialogAbout> createState() => _DialogAboutState();
}

class _DialogAboutState extends State<DialogAbout> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                "Dialog Network",
                style: GoogleFonts.poppins(fontSize: 20.0, fontWeight:FontWeight.bold, color: Colors.red),
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
                  image: AssetImage("assets/images/dialog.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Dialog’s Corporate Responsibility (CR) ethos is based on our commitment to provide parity dividends to local communities in which we operate while mitigating adverse social and environmental impacts both directly and indirectly. At Dialog, we focus on multiple dimensions of CR with a view to maximizing the outcomes of our efforts, while remaining committed to embed CR within the organization so that our efforts go beyond altruism, and ensure that we enrich lives.",
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(fontSize: 12.0),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Our commitment to CR is translated on ground into real, measurable and tangible efforts through pragmatic initiatives across the spheres of the Triple Bottom Line that encompasses economic, social and environmental performance. Our CR initiatives are applied within a local context, which implies that we balance our core business case with community needs. Our multi-faceted approach means that we embed CR across fundamental business processes internally and as well as outreach efforts such as our Flagship Social Investments and Change Trust Fund community projects.",
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(fontSize: 12.0),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Dialog Helps & Contact",
                style: GoogleFonts.poppins(fontSize: 20.0, color: Colors.red, fontWeight: FontWeight.bold),
              ),
              DataTable(columns: <DataColumn>[
                DataColumn(
                    label: Text('CONTACT',
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.normal))),
                DataColumn(
                    label: Text('INFO',
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.normal))),
              ], rows: <DataRow>[
                DataRow(cells: [
                  DataCell(Text('Postpaid')),
                  DataCell(TextButton(onPressed: () => {
                    launch("tel:1777")
                  },child: Text('1777', style: GoogleFonts.poppins(color: Colors.blue)))),
                ]),
                DataRow(cells: [
                  DataCell(Text('Prepaid customers')),
                  DataCell(TextButton(onPressed: () => {
                    launch("tel:1777")
                  },child: Text('1777', style: GoogleFonts.poppins(color: Colors.blue)))),
                ]),
                DataRow(cells: [
                  DataCell(Text('Postpaid customers')),
                  DataCell(TextButton(onPressed: () => {
                    launch("tel:0777 678 678")
                  },child: Text('0777 678 678', style: GoogleFonts.poppins(color: Colors.blue)))),
                ]),
                DataRow(cells: [
                  DataCell(Text('Prepaid customers')),
                  DataCell(TextButton(onPressed: () => {
                    launch("tel:0777 123 456")
                  },child: Text('0777 123 456', style: GoogleFonts.poppins(color: Colors.blue)))),
                ]),
                DataRow(cells: [
                  DataCell(Text('Technical Inquiries')),
                  DataCell(TextButton(onPressed: () => {
                     launch("tel:0777 676 576")
                  },child: Text('0777 676 576', style: GoogleFonts.poppins(color: Colors.blue)))),
                ]),
                DataRow(cells: [
                  DataCell(Text('Prepaid customers')),
                  DataCell(TextButton(onPressed: () => {
                    launch("tel:0777 676 576")
                  },child: Text('0777 676 576', style: GoogleFonts.poppins(color: Colors.blue)))),
                ]),
                DataRow(cells: [
                  DataCell(Text('Roaming Hotline')),
                  DataCell(TextButton(onPressed: () => {
                    launch("tel:0777 999 777")
                  },child: Text('0777 999 777', style: GoogleFonts.poppins(color: Colors.blue)))),
                ]),
                DataRow(cells: [
                  DataCell(Text('Roaming Hotline')),
                  DataCell(TextButton(onPressed: () => {
                    launch("tel:0777 99 77 99")
                  },child: Text('0777 99 77 99', style: GoogleFonts.poppins(color: Colors.blue)))),
                ]),
                DataRow(cells: [
                  DataCell(Text('SMS Hotline')),
                  DataCell(TextButton(onPressed: () => {
                    launch("tel:767")
                  },child: Text('767', style: GoogleFonts.poppins(color: Colors.blue)))),
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
