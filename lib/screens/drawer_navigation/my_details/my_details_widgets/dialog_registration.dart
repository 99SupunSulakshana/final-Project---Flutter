
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogSignUp extends StatefulWidget {
  const DialogSignUp({Key? key}) : super(key: key);

  @override
  State<DialogSignUp> createState() => _DialogSignUpState();
}

class _DialogSignUpState extends State<DialogSignUp> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
              icon: Icon(Icons.perm_identity, color: Colors.red,),
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
                child: const Text('Setting'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                  shadowColor: Colors.blueAccent,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: const Size(40, 40), //////// HERE
                ),
                onPressed: () {},
                child: const Text('Edit'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                  shadowColor: Colors.blueAccent,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: const Size(40, 40), //////// HERE
                ),
                onPressed: () {},
                child: const Text('Remove'),
              ),
            ],
          )
        ]
    );
  }
}
