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
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_outlined),
              onPressed: () {},
            ),
           // actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
          ),
          body: Container(

          )
      ),
    );
  }
}
