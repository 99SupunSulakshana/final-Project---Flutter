import 'package:final_project/model/news.dart';
import 'package:flutter/material.dart';

class MobitelPopularDetails extends StatelessWidget {
  final News package;

  const MobitelPopularDetails(this.package);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(package.title.toString()),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(package.image),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    package.author.toString(),
                    textAlign: TextAlign.center,
                  )),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    package.content.toString(),
                    textAlign: TextAlign.center,
                  )),

              ElevatedButton.icon(
                onPressed: () {
                  // Respond to button press
                },
                icon: const Icon(Icons.list_rounded, size: 18),
                label: const Text('ADD TO LIST'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange,
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Respond to button press
                },
                icon: const Icon(Icons.add, size: 18),
                label: const Text("GET NOW"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              )

              //  Padding(
              //padding: const EdgeInsets.all(8.0),
              //  customButton(text: 'Add TO CART'),
            ],
          ),
        ),
      ),
    ));
  }
}
