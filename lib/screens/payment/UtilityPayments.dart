import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:textfield_search/textfield_search.dart';

class UtilityPayments extends StatefulWidget {
  const UtilityPayments({Key? key}) : super(key: key);

  @override
  State<UtilityPayments> createState() => _UtilityPaymentsState();
}

class _UtilityPaymentsState extends State<UtilityPayments> {
  String label = "Some Label";
  List<String> dummyList = ['CEB', 'Water Department Bill', 'Item 3', 'Item 4', 'Item 5'];
  List<String> amountList = ['200', '300', '500', '1000', '2000'];
  TextEditingController myController = TextEditingController();
  TextEditingController myAccount = TextEditingController();
  TextEditingController myAmount = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    myAccount.dispose();
    myAmount.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.orange,
          title: Text(
            'Utility payments',
            style: GoogleFonts.poppins(color: Colors.orange, fontSize: 18.0),
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
                          child: Text("Utility Provider",
                            style: GoogleFonts.poppins(
                                color: Colors.black26
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFieldSearch(
                            label: label,
                            initialList: dummyList,
                            controller: myController,
                            decoration: const InputDecoration(
                                labelText: "Ex: CEB, Water...etc",
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                      color:Colors.orange,
                                      width: 3,
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                      color:Colors.yellow,
                                      width: 3,
                                    )
                                )
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("Account Number",
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
                                labelText: "Account Number",
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                      color:Colors.orange,
                                      width: 3,
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                      color:Colors.yellow,
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
                                      color:Colors.orange,
                                      width: 3,
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                      color:Colors.yellow,
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
                            'Please enter a account number, utility provider & amount',
                            style: GoogleFonts.poppins(color: Colors.orange, fontSize: 18),
                          ),
                        ):
                        Expanded(
                            child:
                            Text("Mobile Number : "+"${myController.text}" + " Amount : " + "${myAmount.text}",
                              style: GoogleFonts.poppins(
                                  color: Colors.orange, fontSize: 18
                              ),
                            )),
                        MaterialButton(
                          onPressed: (){},
                          minWidth: 50,
                          height: 50,
                          color: Colors.orange,
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
