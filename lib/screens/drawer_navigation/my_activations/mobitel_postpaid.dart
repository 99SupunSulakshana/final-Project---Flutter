import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobitelPostPaidScreen extends StatefulWidget {
  const MobitelPostPaidScreen({Key? key}) : super(key: key);

  @override
  State<MobitelPostPaidScreen> createState() => _MobitelPostPaidScreenState();
}

class _MobitelPostPaidScreenState extends State<MobitelPostPaidScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Mobitel postpaid activations"),
           centerTitle: true,
           // actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
          ),
          body: Container(

          )
      ),
    );
  }
}
