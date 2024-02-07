import 'package:flutter/material.dart';
import '../components/contener.dart';
class WakeUp extends StatefulWidget {
  const WakeUp({Key? key}) : super(key: key);

  @override
  State<WakeUp> createState() => _WakeUpState();
}

class _WakeUpState extends State<WakeUp> {
  List<Widget>?test;
  void initState(){
    super.initState();
    azkar_contener.jason("الأذكار بعد السلام من الصلاة").then((value) {test = value;
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
