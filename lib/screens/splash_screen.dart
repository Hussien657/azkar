import 'package:azkar/core/size_config.dart';

import 'package:flutter/material.dart';

import '../home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>   HomeScreen()));
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff67B3D3),
                Color(0xff5F6BB7),
              ],
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/assets/images/book.png'),
             Text('اذكار مسلم',style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.defaultSize!*4,
              fontWeight: FontWeight.bold,
            ),)
          ],
        ),
      ),
    );
  }
}

