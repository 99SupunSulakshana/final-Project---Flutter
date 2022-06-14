import 'package:flutter/material.dart';

class MyAccountDetails extends StatefulWidget {
  MyAccountDetails({Key? key}) : super(key: key);

  @override
  State<MyAccountDetails> createState() => _MyAccountDetailsState();
}

class _MyAccountDetailsState extends State<MyAccountDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyAccount Details"),
      ),
    );
  }
}
