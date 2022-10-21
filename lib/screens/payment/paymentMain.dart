import 'package:final_project/screens/payment/InsideNetworks.dart';
import 'package:final_project/screens/payment/UtilityPayments.dart';
import 'package:final_project/screens/payment/merchant_payments.dart';
import 'package:final_project/screens/payment/other_payments.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/routers.dart';
import 'institution_payments.dart';

class PaymentMain extends StatefulWidget {
  const PaymentMain({Key? key}) : super(key: key);

  @override
  State<PaymentMain> createState() => _PaymentMainState();
}

class _PaymentMainState extends State<PaymentMain> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.deepPurple,
            title: Text(
                'Payments',
              style: GoogleFonts.poppins(color: Colors.deepPurple, fontSize: 18.0),
            ),
            centerTitle: true,
          ),
          body:Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: GestureDetector(
                      child: Text(
                        'Payment options',
                        style: GoogleFonts.poppins(color: Colors.deepPurple, fontWeight: FontWeight.bold,fontSize: 18.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                      height: 200,
                      width: 300,
                      child: Image(
                          image: AssetImage("assets/images/payment.png")
                      )),
                  Card(
                    elevation: 20,
                    margin: EdgeInsets.all(20),
                    shadowColor: Colors.black,
                    color: Colors.pink,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: (){
                                    PageNavigator(ctx: context).nextPage(page: InsideNetworks());

                                },
                                child: Text(
                                  'Inside in  network',
                                  style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.normal,fontSize: 18.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ),
                  Card(
                      elevation: 20,
                      margin: EdgeInsets.all(20),
                      shadowColor: Colors.black,
                      color: Colors.yellow,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: (){
                                    PageNavigator(ctx: context).nextPage(page: UtilityPayments());
                                  },
                                  child: Text(
                                    'Utility payments',
                                    style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.normal,fontSize: 18.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                  ),
                  Card(
                      elevation: 20,
                      margin: EdgeInsets.all(20),
                      shadowColor: Colors.black,
                      color: Colors.lightGreenAccent,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: (){
                                    PageNavigator(ctx: context).nextPage(page: MerchantPayments());
                                  },
                                  child: Text(
                                    'Merchant payments',
                                    style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.normal,fontSize: 18.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                  ),
                  Card(
                      elevation: 20,
                      margin: EdgeInsets.all(20),
                      shadowColor: Colors.black,
                      color: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: (){
                                    PageNavigator(ctx: context).nextPage(page: InstitutionPayments());
                                  },
                                  child: Text(
                                    'Institution payments',
                                    style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.normal,fontSize: 18.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                  ),
                  Card(
                      elevation: 20,
                      margin: EdgeInsets.all(20),
                      shadowColor: Colors.black,
                      color: Colors.red,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: (){
                                    PageNavigator(ctx: context).nextPage(page: OtherPayments());
                                  },
                                  child: Text(
                                    'Other payments',
                                    style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.normal,fontSize: 18.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                  )
                ],
              ),
            ),
          )
        ));
  }
}
