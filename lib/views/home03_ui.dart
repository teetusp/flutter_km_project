import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_km_project/views/home04_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Home03UI extends StatefulWidget {
  const Home03UI({super.key});

  @override
  State<Home03UI> createState() => _Home03UIState();
}

class _Home03UIState extends State<Home03UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'DTI AppBar',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Kanit',
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              
            },
            icon: Icon(
              Icons.search,
              color: Colors.grey[400],
            ),
          ),
          IconButton(
            onPressed: () {
              if(Platform.isAndroid ){
                SystemNavigator.pop();
              }
              else if(Platform.isIOS){
                exit(0);
              }
            },
            icon: Icon( 
              Icons.exit_to_app, 
              color: Colors.red[300],
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeUI04(),
                    ),
                );
              },
              child: Text(
                'Go to Home04',
                style: TextStyle(
                  fontFamily: 'Kanir',  
                ),
              ),
            ), 
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Southeast Asia University',
              ),
              accountEmail: Text(
                'www.sau.ac.th'
              ),
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2025/01/20/20/11/shrine-9348003_960_720.jpg',
                ),
              ),
              otherAccountsPictures: [
                Image.asset(
                  'assets/images/pic1.png',
                ),
                Icon(
                  FontAwesomeIcons.facebook,  
                  color: Colors.blue,
                ),
              ],
            ),
            ListTile(
              onTap: (){},
              leading: Icon(
                Icons.home,
              ),    
              trailing: Icon(
                Icons.numbers,
              ),
              title: Text(
                'หน้าหลัก',
              ),
              subtitle:  Text(
                'Home',
              ),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(
                Icons.person,
                color: Colors.pink,
              ),
               title: Text(
                'Favorite',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
            ),
             ListTile(
              onTap: (){},
              leading: Icon(
                FontAwesomeIcons.google,
                color: Colors.red,
              ),
               title: Text(
                'Google',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
            ),
            Divider(),
            ListTile(
              onTap: (){},
              leading: Icon(
                FontAwesomeIcons.line,
                color: Colors.green,
              ),
              trailing: Text(
                'Go to',
               ),
               title: Text(
                'Line',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
            ),
            ListTile(
              onTap: (){},
              leading: Image.asset(
                'assets/images/pic3.png',
              ),
               title: Text(
                'Line',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
            ),
          ],
        ),
      ),
    ); 
  }
}