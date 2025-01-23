import 'package:flutter/material.dart';
import 'package:flutter_km_project/views/introduction_screen_ui.dart';
import 'package:flutter_km_project/views/splashsreen_ui.dart';

void main() {
  runApp(
    FultterKM(),
  );
}

class FultterKM extends StatefulWidget {
  const FultterKM({super.key});

  @override
  State<FultterKM> createState() => _FultterKMState();
}

class _FultterKMState extends State<FultterKM> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroductionScreenUI(),
    );
  }
}
