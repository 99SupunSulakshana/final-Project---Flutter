// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ExpansionWid extends StatefulWidget {
  const ExpansionWid({Key? key}) : super(key: key);

  @override
  State<ExpansionWid> createState() => _ExpansionWidState();
}

class _ExpansionWidState extends State<ExpansionWid> {
  List<Car> cars = [
    Car(1, "Monthly", "This is Benz", false),
    Car(1, "Monthly", "This is Benz", false),
  ];
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList();
  }
}

class Car {
  int id;
  String name;
  String description;
  bool isExpanded;

  Car(this.id, this.name, this.description, this.isExpanded);
}
