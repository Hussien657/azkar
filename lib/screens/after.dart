import 'package:flutter/material.dart';
import '../components/contener.dart';
class After extends StatefulWidget {
  const After({Key? key}) : super(key: key);

  @override
  State<After> createState() => _AfterState();
}

class _AfterState extends State<After> {
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
