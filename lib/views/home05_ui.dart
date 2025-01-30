import 'package:flutter/material.dart';
import 'package:flutter_km_project/widgets/show_a_ui.dart';
import 'package:flutter_km_project/widgets/show_b_ui.dart';
import 'package:flutter_km_project/widgets/show_c_ui.dart';
import 'package:flutter_km_project/widgets/show_d_ui.dart';
import 'package:flutter_km_project/widgets/show_e_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home05UI extends StatefulWidget {
  const Home05UI({super.key});

  @override
  State<Home05UI> createState() => _Home05UIState();
}

class _Home05UIState extends State<Home05UI> {
  int _selectedindex = 2;
  List  ShowUI = [
    ShowAUI(),
    ShowBUI(),
    ShowCUI(),
    ShowDUI(),
    ShowEUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink,
        title: Text(
          'KM BottomNav 01',
          style: TextStyle(
            fontFamily: 'Kanit', 
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          //***คำสั่งใดทีมีผลต่อการแสดงผล ให้เขียนอยู่ภายใต้ setState ***
          setState(() {
            _selectedindex = value;
          });
        },
        backgroundColor: Colors.pink[100],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedindex,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.facebook,
            ),
            label: 'Facebook',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.line,
            ),
            label: 'Line',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.tiktok,
            ),
            label: 'Tiktok',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.instagram,
            ),
            label: 'Instagram',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.google,
            ),
            label: 'Google',
          ),
        ],
      ),
      body: ShowUI[_selectedindex],
    );
  }
}