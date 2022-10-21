import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstitutionPayments extends StatefulWidget {
  const InstitutionPayments({Key? key}) : super(key: key);

  @override
  State<InstitutionPayments> createState() => _InstitutionPaymentsState();
}

class _InstitutionPaymentsState extends State<InstitutionPayments> {
  String label = "Some Label";
  List<String> dummyList = ['0711327510', '0711103890', 'Item 3', 'Item 4', 'Item 5'];
  List<String> amountList = ['200', '300', '500', '1000', '2000'];
  TextEditingController myController = TextEditingController();
  TextEditingController myAmount = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    myAmount.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue,
          title: Text(
            'Institution payments',
            style: GoogleFonts.poppins(color: Colors.blue, fontSize: 18.0),
          ),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                      height: 200,
                      width: 300,
                      child: Image(
                          image: AssetImage("assets/images/payment.png")
                      )),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("Institution Code",
                            style: GoogleFonts.poppins(
                                color: Colors.black26
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            controller: myController,
                            decoration: const InputDecoration(
                                labelText: "Institution Code",
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                      color:Colors.blue,
                                      width: 3,
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                      color:Colors.lightBlueAccent,
                                      width: 3,
                                    )
                                )
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("Amount",
                            style: GoogleFonts.poppins(
                                color: Colors.black26
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            controller: myAmount,
                            decoration: const InputDecoration(
                                labelText: "Amount",
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                      color:Colors.blue,
                                      width: 3,
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                      color:Colors.lightBlueAccent,
                                      width: 3,
                                    )
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 90.0,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myController.text.isEmpty ? Expanded(
                          child: Text(
                            'Please enter a mobile number & amount',
                            style: GoogleFonts.poppins(color: Colors.blue, fontSize: 18),
                          ),
                        ):
                        Expanded(
                            child:
                            Text("Intitution Code : "+"${myController.text}" + " Amount : " + "${myAmount.text}",
                              style: GoogleFonts.poppins(
                                  color: Colors.blue, fontSize: 18
                              ),
                            )),
                        MaterialButton(
                          onPressed: (){},
                          minWidth: 50,
                          height: 50,
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Icon(Icons.arrow_forward_ios_sharp, color: Colors.white,),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
