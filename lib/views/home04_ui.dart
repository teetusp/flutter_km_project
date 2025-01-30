  import 'package:flutter/material.dart';

class HomeUI04 extends StatefulWidget {
  const HomeUI04({super.key});

  @override
  State<HomeUI04> createState() => _HomeUI04State();
}

class _HomeUI04State extends State<HomeUI04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'DTI App Test',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Kanit',
          ),
        ),
        centerTitle: true,  
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
        ),
      ),
    );
  }
}