

import 'package:azkar/screens/after.dart';
import 'package:azkar/screens/elmsa.dart';
import 'package:azkar/screens/elsbah.dart';
import 'package:azkar/screens/mosque.dart';
import 'package:azkar/screens/sleep.dart';
import 'package:azkar/screens/time.dart';
import 'package:azkar/screens/timer_screen.dart';
import 'package:azkar/screens/wake_up.dart';
import 'package:flutter/material.dart';
import 'components/azkar_widget.dart';
import 'core/size_config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected = 0;
  List pages = [home(), Time(), TimerScreen()];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: pages[selected],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        iconSize: SizeConfig.defaultSize! * 2.5,
        selectedItemColor: Colors.white,
        unselectedFontSize: SizeConfig.defaultSize! * 1.5,
        unselectedItemColor: Colors.grey,
        selectedFontSize: SizeConfig.defaultSize! * 1.8,
        currentIndex: selected,
        onTap: (index) {
          setState(() {
            selected = index;
          });
        },
        backgroundColor: Color(0xff5F6BB7),
        items: [
          BottomNavigationBarItem(
              label: 'الاذكار',
              icon: Icon(
                Icons.home,
              )),
          BottomNavigationBarItem(
              label: 'مواقيت الصلاة',
              icon: Icon(
                Icons.timer,
              )),
          BottomNavigationBarItem(
              label: 'السبحة',
              icon: Icon(
                Icons.timer,
              )),
        ],
      ),
    );
  }
}

class home extends StatelessWidget {
  const home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الاذكار'),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          AzkarWidget(
              Icons.sunny,
              'اذكار الصباح',
              () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Elsbah())),
              ''),
          AzkarWidget(
              Icons.nights_stay,
              'اذكار المساء',
              () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Elmsa())),
              ''),
          AzkarWidget(
              Icons.mosque,
              'اذكار المسجد ',
              () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Mosque())),
              ''),
          AzkarWidget(
              Icons.mosque_outlined,
              'اذكار بعد الصلاة ',
              () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => After())),
              ''),
          AzkarWidget(
              Icons.bed,
              'اذكار قبل النوم ',
              () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Sleep())),
              ''),
          AzkarWidget(
              Icons.bed,
              'اذكار الاستيقاظ ',
              () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => WakeUp())),
              ''),
        ],
      ),
    );
  }
}
