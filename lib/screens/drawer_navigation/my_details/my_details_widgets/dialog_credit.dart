
import 'package:final_project/screens/drawer_navigation/my_details/reload/realod_home.dart';
import 'package:final_project/screens/drawer_navigation/my_details/transactions/transaction_home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../utils/routers.dart';
import '../dialog_credit_balance.dart';

class DialogBalance extends StatelessWidget {
  const DialogBalance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          "Dialog Balance",
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(fontSize: 18.0, color: Colors.white),
        ),
        Text(
          "077 1327510",
          textAlign: TextAlign.center,
          style: GoogleFonts.raleway(fontSize: 20.0, color: Colors.white),
        ),
        Text(
          "Rs. 125.00",
          textAlign: TextAlign.center,
          style: GoogleFonts.raleway(fontSize: 20.0, color: Colors.white),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange,
                onPrimary: Colors.white,
                shadowColor: Colors.greenAccent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize: const Size(100, 40), //////// HERE
              ),
              onPressed: () {
                PageNavigator(ctx: context).nextPage(page: TransactionHome());
              },
              child: const Text('Transactions'),
            ),
            const SizedBox(
              width: 10.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                onPrimary: Colors.white,
                shadowColor: Colors.greenAccent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize: const Size(100, 40), //////// HERE
              ),
              onPressed: () {
                PageNavigator(ctx: context).nextPage(page: ReloadHome());
              },
              child: const Text('Reload'),
            ),
            const SizedBox(
              width: 10.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                shadowColor: Colors.greenAccent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                minimumSize: const Size(40, 40), //////// HERE
              ),
              onPressed: () {
                PageNavigator(ctx: context).nextPage(page: DialogCreditBalance());
              },
              child: const Icon(Icons.remove_red_eye),
            ),
          ],
        )
      ],
    );
  }
}
