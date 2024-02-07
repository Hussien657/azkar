import 'package:flutter/material.dart';
import '../core/size_config.dart';

 class AzkarWidget extends StatelessWidget {

   var icon ;
   String text ;
   void Function()? fun;
   String Time;
   AzkarWidget(this.icon, this.text,this.fun ,this.Time);

   @override
   Widget build(BuildContext context) {
     return GestureDetector(
       onTap:fun ,
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(
           height:SizeConfig.screenHeight! * 0.15,
           decoration: BoxDecoration(
               gradient: const LinearGradient(
                 begin: Alignment. bottomLeft,
                 end: Alignment.topRight,
                 colors: [
                   Color(0xff67B3D3),
                   Color(0xff5F6BB7),
                 ],
               ),
             borderRadius: BorderRadius.circular(25),
           ),
           child: Padding(
             padding: const EdgeInsets.all(10.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 icon==null?
                 Text(Time,style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)
                 :Icon(icon,color: Colors.white,size: SizeConfig.defaultSize!*4,),
                 Text(text,style: const TextStyle(
                   color: Colors.white,
                   fontSize: 30,
                 ),)
               ],
             ),
           ),
         ),
       ),
     );
   }
 }
