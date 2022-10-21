import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotReloads extends StatefulWidget {
  const HotReloads({Key? key}) : super(key: key);

  @override
  State<HotReloads> createState() => _HotReloadsState();
}

class _HotReloadsState extends State<HotReloads> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Hot Reloads"),
          centerTitle: true,
          actions: [],
        ),
        body: Container(

        ),
      ),
    );
  }
}
