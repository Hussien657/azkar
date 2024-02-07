import 'package:flutter/material.dart';
import '../components/contener.dart';
class Sleep extends StatefulWidget {
  const Sleep({Key? key}) : super(key: key);

  @override
  State<Sleep> createState() => _SleepState();
}

class _SleepState extends State<Sleep> {
  List<Widget>?test;
  void initState(){
    super.initState();
    azkar_contener.jason("أذكار النوم").then((value) {test = value;
    setState(() {

    });} );

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('الاذكار'),),
      body: SingleChildScrollView(
        child: Column(

          children: test??[],
        ),
      ),
    );
  }
}
