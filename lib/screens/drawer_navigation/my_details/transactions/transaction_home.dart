import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionHome extends StatefulWidget {
  const TransactionHome({Key? key}) : super(key: key);

  @override
  State<TransactionHome> createState() => _TransactionHomeState();
}

class _TransactionHomeState extends State<TransactionHome> {
  String label = "Some Label";
  List<String> dummyList = ['0711327510', '0711103890', 'Item 3', 'Item 4', 'Item 5'];
  List<String> amountList = ['200', '300', '500', '1000', '2000'];
  TextEditingController myController = TextEditingController();
  TextEditingController recieverController = TextEditingController();
  TextEditingController myAmount = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    recieverController.dispose();
    myAmount.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Transaction"),
          centerTitle: true,
          actions: [],
        ),
        body: Container(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 40.0,
                  ),
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
                          child: Text("Sender's Mobile Number",
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
                                labelText: "Enter sender's mobile number",
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                      color:Colors.pink,
                                      width: 1,
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                      color:Colors.deepOrange,
                                      width: 1,
                                    )
                                )
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("Receiver's Number",
                            style: GoogleFonts.poppins(
                                color: Colors.black26
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            controller: recieverController,
                            decoration: const InputDecoration(
                                labelText: "Enter receiver's mobile number",
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                      color:Colors.pink,
                                      width: 1,
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                      color:Colors.deepOrange,
                                      width: 1,
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
                                      color:Colors.pink,
                                      width: 3,
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                      color:Colors.deepOrange,
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
                            'Create your transaction',
                            style: GoogleFonts.poppins(color: Colors.blue, fontSize: 18),
                          ),
                        ):
                        Expanded(
                            child:
                            Text("Sender : "+"${myController.text}" + "Receiver :" + "${recieverController.text}" +" Amount : " + "${myAmount.text}",
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
