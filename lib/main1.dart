import 'package:azkar/screen1/screen.dart';
import 'package:azkar/screens/home_screen.dart';
import 'package:azkar/screens/time.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

/*void main() {
  runApp( MyApp());
}*/
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> bar= [
    Home_Screen1(),
    Time(),
    Screen1()

  ];
  int select_bar = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('اذكار '),),
        body:Container(
          child: bar[select_bar],

        ),

        bottomNavigationBar: GNav(
          backgroundColor:Color(0xff5F6BB7),
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor:Color(0xff67B3D3),
          gap: 10,
          tabs: [
            GButton(icon: Icons.home,text: 'الاذكار',),
            GButton(icon: Icons.compass_calibration_sharp,text: 'البوصلة',),
            GButton(icon: Icons.timer, text: 'السبحة',
            ),
          ],
          selectedIndex: select_bar,
          onTabChange: (value) {
            print(value);
            setState(() {
              select_bar= value;
            });
          },
        ),


      ),
    );
  }
}


