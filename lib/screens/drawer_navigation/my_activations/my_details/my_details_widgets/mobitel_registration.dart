
import 'package:flutter/material.dart';

import '../../../../../utils/routers.dart';
import '../../../setting/settings.dart';

class MobitelSignUpDetails extends StatelessWidget {
  const MobitelSignUpDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
              labelText: '0711327510',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.sim_card_rounded, color: Colors.blue,),
              hintText: 'Enter sim slot no:',
              labelText: 'Sim card 01',
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
                onPressed: () {
                  PageNavigator(ctx: context).nextPage(page: Settings());
                },
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
                onPressed: () {

                },
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
