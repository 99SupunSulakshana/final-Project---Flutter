import 'package:flutter/material.dart';

class Activations extends StatefulWidget {
  const Activations({Key? key}) : super(key: key);

  @override
  State<Activations> createState() => _ActivationsState();
}

class _ActivationsState extends State<Activations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
        centerTitle: true,
      ),
    );
  }
}
