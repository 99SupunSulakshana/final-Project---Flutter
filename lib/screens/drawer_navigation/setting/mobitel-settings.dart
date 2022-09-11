import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobitelSettings extends StatefulWidget {
  const MobitelSettings({Key? key}) : super(key: key);

  @override
  State<MobitelSettings> createState() => _MobitelSettingsState();
}

class _MobitelSettingsState extends State<MobitelSettings> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Mobitel Settings"),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_outlined),
              onPressed: () {},
            ),
          //  actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
          ),
          body: Container(
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Mobitel e - services",
                  textAlign: TextAlign.center,
                  style:
                  GoogleFonts.poppins(fontSize: 25.0, color: Colors.blue),
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
                          icon: Icon(Icons.person, color: Colors.blue,),
                          hintText: 'Enter your name',
                          labelText: 'Supun Sulakshana',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.perm_identity, color: Colors.blue,),
                          hintText: 'Enter your ID',
                          labelText: '992660465V',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.location_on_rounded, color: Colors.blue,),
                          hintText: 'Enter your address',
                          labelText: 'No: 05, Mathugama, Kaluthara, Sri Lanka',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.code_sharp, color: Colors.blue,),
                          hintText: 'Enter your postal code',
                          labelText: '12112',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.date_range_sharp, color: Colors.blue,),
                          hintText: 'Enter your Date of birth',
                          labelText: '1999 - 09 - 22',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.email, color: Colors.blue,),
                          hintText: 'Enter your email',
                          labelText: 'supunsulak20@gmail.com',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.phone, color: Colors.blue,),
                          hintText: 'Enter your mobitel No:',
                          labelText: '0777123456',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.sim_card_rounded, color: Colors.blue,),
                          hintText: 'Enter sim slot no:',
                          labelText: 'Sim card 02',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.done, color: Colors.blue,),
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
