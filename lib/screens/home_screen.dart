import 'package:azkar/core/size_config.dart';
import 'package:azkar/screens/after.dart';
import 'package:azkar/screens/elmsa.dart';
import 'package:azkar/screens/elsbah.dart';
import 'package:azkar/screens/mosque.dart';
import 'package:azkar/screens/sleep.dart';
import 'package:azkar/screens/timer_screen.dart';
import 'package:azkar/screens/wake_up.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../components/azkar_widget.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> bar= [
      Home_Screen1(),

      /* Container(child: Center(
      child: Text('ahmed'),
    ),),
    Text('mo00000000'),
    Container(
      decoration: BoxDecoration(image:
      DecorationImage(image: AssetImage('images/assets/screen-0.jpg'),fit: BoxFit.fill)),
      child:  Center(child: Image.asset('images/assets/image_6_3.png'))),*/
      /*Screen1()*/

    ];
    int select_bar = 0;
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('الاذكار',),
      ),
      body: bar[select_bar],
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
    );
  }
}

class Home_Screen1 extends StatelessWidget {
  const Home_Screen1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        AzkarWidget(Icons.sunny,'اذكار الصباح',
                () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => Elsbah())),''),
        AzkarWidget(Icons.nights_stay,'اذكار المساء',
                () =>  Navigator.push(context, MaterialPageRoute(builder: (context) =>Elmsa())),''),
        AzkarWidget(Icons.mosque,'اذكار المسجد ',
                () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => Mosque())),''),
        AzkarWidget(Icons.mosque_outlined,'اذكار بعد الصلاة ',
                () =>  Navigator.push(context, MaterialPageRoute(builder: (context) =>After())),''),
        AzkarWidget(Icons.bed,'اذكار قبل النوم ',
                () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => Sleep())),''),
        AzkarWidget(Icons.bed,'اذكار الاستيقاظ ',
                () =>  Navigator.push(context, MaterialPageRoute(builder: (context) =>WakeUp())),''),
      ],
    );
  }
}
