import 'package:final_project/screens/admin/mobitel/prediction-ml/productivty/checkProductivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroPrediction extends StatelessWidget {
  IntroPrediction({Key? key}) : super(key: key);

  final List<PageViewModel> pages = [
    PageViewModel(
      title: 'Check your package or service productivity',
      body: 'Implement the relevant details and click on the submit button, and you can get the your prediction results',
      footer: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.deepPurple
        ),
        onPressed: (){},
        child: const Text("LET'S GO"),
      ),
      image: Center(
        child: Image.asset('assets/images/intro01.png'),
      ),
      decoration: PageDecoration(
        titleTextStyle: GoogleFonts.raleway(
          fontSize: 25.0,
          fontWeight: FontWeight.normal,
          color: Colors.black
        ),
        bodyTextStyle: GoogleFonts.raleway(
          fontSize: 17.0,
          fontWeight: FontWeight.normal,
          color: Colors.grey
        )
      )
    ),
    PageViewModel(
        title: 'Get your productivity results',
        body: 'get the results and check your package or service condition of that and inform about that your head office within the email.',
        footer: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.deepPurple
          ),
          onPressed: (){},
          child: const Text("LET'S GO"),
        ),
        image: Center(
          child: Image.asset('assets/images/intro02.png'),
        ),
        decoration: PageDecoration(
            titleTextStyle: GoogleFonts.raleway(
                fontSize: 25.0,
                fontWeight: FontWeight.normal,
              color: Colors.black
            ),
            bodyTextStyle: GoogleFonts.raleway(
                fontSize: 17.0,
                fontWeight: FontWeight.normal,
                color: Colors.grey
            )
        )
    ),
    PageViewModel(
        title: 'Go ahead and check productivity rate',
        body: '',
        footer: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.deepPurple
          ),
          onPressed: (){},
          child: const Text("LET'S GO"),
        ),
        image: Center(
          child: Image.asset('assets/images/intro03.png'),
        ),
        decoration: PageDecoration(
            titleTextStyle: GoogleFonts.raleway(
                fontSize: 25.0,
                fontWeight: FontWeight.normal,
              color: Colors.black
            ),
            bodyTextStyle: GoogleFonts.raleway(
                fontSize: 17.0,
                fontWeight: FontWeight.normal,
                color: Colors.grey
            )
        )
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.deepPurple,
            title: Text(
              "Prediction Guides",
              textDirection: TextDirection.ltr,
              style: GoogleFonts.poppins(fontSize: 20.0),
            ),
            centerTitle: true,
            actions: [
           //   IconButton(onPressed: () {}, icon: const Icon(Icons.help_outline_sharp)),
           //   IconButton(onPressed: () {}, icon: const Icon(Icons.logout_outlined)),
            ],
            elevation: 0 ,
          ),
          body: IntroductionScreen(
            pages: pages,
            dotsDecorator: const DotsDecorator(
              size: Size.square(25),
              color: Colors.orange,
              activeSize: Size(20, 10),
              activeColor: Colors.red,
              spacing: EdgeInsets.symmetric(horizontal: 3.0),
            ),
            showDoneButton: true,
            done: Text("Done", style: GoogleFonts.poppins(fontSize: 20.0, color: Colors.lightBlueAccent),),
            showSkipButton: true,
            skip:  Text("Skip", style: GoogleFonts.poppins(fontSize: 20.0, color: Colors.lightBlueAccent),),
            showNextButton: true,
            next:  Text("Next", style: GoogleFonts.poppins(fontSize: 20.0, color: Colors.lightBlueAccent),),
            onDone: () => onDone(context),
          ),
        ));
  }

  void onDone(context){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const CheckProductivity()));
  }
}
