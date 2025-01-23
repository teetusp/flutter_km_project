import 'package:flutter/material.dart';
import 'package:flutter_km_project/views/home02_ui.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionScreenUI extends StatefulWidget {
  const IntroductionScreenUI({super.key});

  @override
  State<IntroductionScreenUI> createState() => _IntroductionScreenUIState();
}

class _IntroductionScreenUIState extends State<IntroductionScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'SAU Hello 😊',
            body: 'Welcome to Thailand',
            image: Image.asset(
              'assets/images/pic1.png',
              width: MediaQuery.of(context).size.width * 0.6,
            ),
          ),
          PageViewModel(
            title: 'SAU Hi 😊',
            body: 'Welcome to Japan',
            image: Image.asset(
              'assets/images/pic2.png',
              width: MediaQuery.of(context).size.width * 0.6,
            ),
          ),
          PageViewModel(
            title: 'SAU Hey 😊',
            body: 'Welcome to America',
            image: Image.asset(
              'assets/images/pic3.png',
              width: MediaQuery.of(context).size.width * 0.6,
            ),
          ),
          PageViewModel(
            title: 'SAU HOO 😊',
            body: 'Welcome to England',
            image: Image.asset(
              'assets/images/pic4.png',
              width: MediaQuery.of(context).size.width * 0.6,
            ),
          ),
          PageViewModel(
            title: 'SAU Wee 😊',
            body: 'Welcome to China',
            image: Image.asset(
              'assets/images/pic5.png',
              width: MediaQuery.of(context).size.width * 0.6,
            ),
          ),
        ],
        showSkipButton: true,
        skip: Text(
          'ข้าม',
        ),
        showNextButton: true,
        next: Icon(
          Icons.arrow_forward_ios,
        ),
        showDoneButton: true,
        done: Text(
          'หน้าหลัก',
        ),
        onDone: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home02UI(),
            ),
          );
        },
        scrollPhysics: ClampingScrollPhysics(),
      ),
    );
  }
}
