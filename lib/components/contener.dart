import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class azkar_contener extends StatefulWidget {
  static Future<List<Widget>>jason(String type) async{

    final jasonText = await rootBundle.loadString('images/assets/azkar.json');
    final data = jsonDecode(jasonText);
    print (data["rows"][0]);
    List<Widget>listofazkar= [];
    for ( final one in data["rows"]){
      if (one[0]==type){

        listofazkar.add(azkar_contener(azkar_text: one[1],azkar_number:one[3] is! int? 1 :one[3] ));
      }
    }
    return listofazkar;

  }
  String azkar_text;
  int azkar_number;
  azkar_contener({required this.azkar_number,required this.azkar_text});

  @override
  State<azkar_contener> createState() => _azkar_contenerState();
}

class _azkar_contenerState extends State<azkar_contener> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(widget.azkar_number >0)
          widget.azkar_number--;
        setState(() {
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color:widget.azkar_number > 0? Colors.blue : Colors.green ,
              borderRadius: BorderRadius.circular(10),
              boxShadow:[ BoxShadow(
                  color: Colors.black54,
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: Offset(-3,5)
              )]
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        widget.azkar_text,
                        style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color:widget.azkar_number > 0? Colors.blue.shade200 : Colors.green.shade200 ,

                  ) ,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(15),

                              ) ,
                              child: Text(widget.azkar_number.toString(),style: TextStyle(fontSize: 20),)),
                        ),
                        Expanded(child: Text('تكرار',style: TextStyle(fontSize: 20),)),

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

        ),
      ),
    );
  }

}