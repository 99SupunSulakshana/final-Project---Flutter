import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DialogSettings extends StatefulWidget {
  const DialogSettings({Key? key}) : super(key: key);

  @override
  State<DialogSettings> createState() => _DialogSettingsState();
}

class _DialogSettingsState extends State<DialogSettings> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Dialog Settings"),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_outlined),
              onPressed: () {},
            ),
           // actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
          ),
          body: Container(
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Dialog E-Services",
                  textAlign: TextAlign.center,
                  style:
                  GoogleFonts.poppins(fontSize: 25.0, color: Colors.red),
                ),
                Text(
                  "Registration form",
                  textAlign: TextAlign.center,
                  style:
                  GoogleFonts.poppins(fontSize: 15.0, color: Colors.black54),
                ),
              Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            TextFormField(
            decoration: const InputDecoration(
            icon: Icon(Icons.person, color: Colors.red,),
            hintText: 'Enter your name',
            labelText: 'Supun Sulakshana',
          ),
      ),
        TextFormField(
          decoration: const InputDecoration(
            icon: Icon(Icons.numbers, color: Colors.red,),
            hintText: 'Enter your ID',
            labelText: '992660465V',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            icon: Icon(Icons.location_on_rounded, color: Colors.red,),
            hintText: 'Enter your address',
            labelText: 'No: 05, Mathugama, Kaluthara, Sri Lanka',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            icon: Icon(Icons.code_sharp, color: Colors.red,),
            hintText: 'Enter your postal code',
            labelText: '12112',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            icon: Icon(Icons.date_range_sharp, color: Colors.red,),
            hintText: 'Enter your Date of birth',
            labelText: '1999 - 09 - 22',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            icon: Icon(Icons.email, color: Colors.red,),
            hintText: 'Enter your email',
            labelText: 'supunsulak20@gmail.com',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            icon: Icon(Icons.phone, color: Colors.red,),
            hintText: 'Enter your mobitel No:',
            labelText: '0777123456',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            icon: Icon(Icons.sim_card_rounded, color: Colors.red,),
            hintText: 'Enter sim slot no:',
            labelText: 'Sim card 02',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            icon: Icon(Icons.done, color: Colors.red,),
            hintText: 'Your sim activations',
            labelText: 'Active',
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
                shadowColor: Colors.blueAccent,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize: const Size(40, 40), //////// HERE
              ),
              onPressed: () {},
              child: const Text('Submit'),
            ),
          ],
        )
        ]
    ),
              ]),
            ),
          )
      ),
    );
  }
}
