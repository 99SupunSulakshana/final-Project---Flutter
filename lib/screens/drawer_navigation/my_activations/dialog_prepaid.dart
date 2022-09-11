import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogPrePaidScreen extends StatefulWidget {
  const DialogPrePaidScreen({Key? key}) : super(key: key);

  @override
  State<DialogPrePaidScreen> createState() => _DialogPrePaidScreenState();
}

class _DialogPrePaidScreenState extends State<DialogPrePaidScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Dialog prepaid activations"),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_outlined),
              onPressed: () {},
            ),
            actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
          ),
          body: Container(

          )
      ),
    );
  }
}
