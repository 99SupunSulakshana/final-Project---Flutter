import 'package:flutter/material.dart';

class DialogRecommandations extends StatefulWidget {
  const DialogRecommandations({Key? key}) : super(key: key);

  @override
  State<DialogRecommandations> createState() => _DialogRecommandationsState();
}

class _DialogRecommandationsState extends State<DialogRecommandations> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: const Text(
                            'Dialog Recommandations',
                            textAlign: TextAlign.justify,
                          ),
                          content: const Text(
                              'The 2022 Indian Premier League, also known as IPL 15 or for sponsorship reasons, Tata IPL 2022, is the fifteenth season of the Indian Premier League (IPL)'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('OK')),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('CANCEL')),
                          ],
                        ));
              },
              title: Row(
                children: <Widget>[
                  Container(
                    height: 60.0,
                    width: 60.0,
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(7.0),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(.5),
                              blurRadius: 20.0,
                              spreadRadius: 0.0,
                              offset: const Offset(5.0, 5.0)),
                        ]),
                    child: const Center(
                      child: Image(
                        image: AssetImage('assets/images/png02.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          "Recommand Hots!",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "Monthly Package",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "2022-05-26 15:30PM",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
