import 'package:flutter/material.dart';
import 'package:flutter_km_project/widgets/show_a_ui.dart';
import 'package:flutter_km_project/widgets/show_b_ui.dart';
import 'package:flutter_km_project/widgets/show_c_ui.dart';
import 'package:flutter_km_project/widgets/show_d_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Home06UI extends StatefulWidget {
  const Home06UI({super.key});

  @override
  State<Home06UI> createState() => _Home06UIState();
}

class _Home06UIState extends State<Home06UI> {
  int _selectedIndex = 0;
  List  ShowUI = [
    ShowAUI(),
    ShowBUI(),
    ShowCUI(),
    ShowDUI(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          'KM BottomNav 02',
          style: TextStyle(
            fontFamily: 'Kanit', 
          ),
        ),
      ),  
      bottomNavigationBar: SalomonBottomBar(
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        currentIndex: _selectedIndex,
        items: [
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.facebook,
            ),
            title: Text(
              'Facebook',
            ),
            selectedColor: Colors.blue,
          ),
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.line,
            ),
            title: Text(
              'Line',
            ),
            selectedColor: Colors.green,
          ),
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.tiktok,
            ),
            title: Text(
              'Tiktok',
            ),
            selectedColor: Colors.pink,
          ),
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.instagram,
            ),
            title: Text(
              'Instagram',
            ),
            selectedColor: Colors.pink,
          ),
        ],
      ), 
      body: ShowUI[_selectedIndex],
    );
  }
}