import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/contener.dart';
class Elsbah extends StatefulWidget {
  const Elsbah({Key? key}) : super(key: key);

  @override
  State<Elsbah> createState() => _ElsbahState();
}

class _ElsbahState extends State<Elsbah> {
  List<Widget>?test;
  void initState(){
    super.initState();
     azkar_contener.jason("أذكار الصباح").then((value) {test = value;
     setState(() {

     });} );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الاذكار'),),
      body: SingleChildScrollView(
        child: Column(
          /*children: [
            azkar_contener(azkar_number: 10,azkar_text:
            'أَمْسَيْـنا وَأَمْسـى المـلكُ لله وَالحَمدُ لله ، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير ، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذهِ اللَّـيْلَةِ وَخَـيرَ ما بَعْـدَهـا ، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذهِ اللَّـيْلةِ وَشَرِّ ما بَعْـدَهـا ، رَبِّ أَعـوذُبِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر ، رَبِّ أَعـوذُبِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبْر.',),
           ElevatedButton(onPressed: (){jason();}, child:Text('fdg') )
          ],*/
          children: test??[],
        ),
      ),
    );
  }

}

