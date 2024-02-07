import 'package:flutter/material.dart';
import '../components/contener.dart';
class Mosque extends StatefulWidget {
  const Mosque({Key? key}) : super(key: key);

  @override
  State<Mosque> createState() => _MosqueState();
}

class _MosqueState extends State<Mosque> {
  List<Widget>?test;
  void initState(){
    super.initState();
    azkar_contener.jason("دعاء دخول المسجد").then((value) {test = value;
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
