import 'package:flutter/material.dart';
import '../components/contener.dart';
class Elmsa extends StatefulWidget {

  const Elmsa({Key? key}) : super(key: key);

  @override
  State<Elmsa> createState() => _ElmsaState();
}

class _ElmsaState extends State<Elmsa> {
  List<Widget>?test;
  void initState(){
    super.initState();
    azkar_contener.jason("أذكار المساء").then((value) {test = value;
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
