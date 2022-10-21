import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:searchfield/searchfield.dart';
import 'package:textfield_search/textfield_search.dart';


class InsideNetworks extends StatefulWidget {
  const InsideNetworks({Key? key}) : super(key: key);

  @override
  State<InsideNetworks> createState() => _InsideNetworksState();
}

class _InsideNetworksState extends State<InsideNetworks> {
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
          foregroundColor: Colors.pink,
          title: Text(
            'Inside Networks payments',
            style: GoogleFonts.poppins(color: Colors.pink, fontSize: 18.0),
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
                          child: Text("Mobile Number",
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
                              labelText: "Mobile Number",
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
                                    color:Colors.pink,
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
                          child: TextFieldSearch(
                            label: label,
                            initialList: amountList,
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
                                      color:Colors.pink,
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
                            style: GoogleFonts.poppins(color: Colors.pink, fontSize: 18),
                          ),
                        ):
                        Expanded(
                            child:
                            Text("Mobile Number : "+"${myController.text}" + " Amount : " + "${myAmount.text}",
                              style: GoogleFonts.poppins(
                                  color: Colors.pink, fontSize: 18
                              ),
                            )),
                        MaterialButton(
                          onPressed: (){},
                          minWidth: 50,
                          height: 50,
                          color: Colors.pink,
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
