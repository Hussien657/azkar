import 'package:azkar/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../azkar_cubit/azkar_cubit.dart';
class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
        providers: [
        BlocProvider(create: (context) => AzkarCubit()..getData() )
    ],
    child: MaterialApp(
      home: SplashScreen(),
      theme: ThemeData(
        fontFamily: 'Pacifico',
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color(0xff5F6BB7),
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          )
        ),
      ),
    ));
  }
}
