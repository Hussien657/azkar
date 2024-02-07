import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import '../digait_font/digital_font.dart';

import 'package:nice_buttons/nice_buttons.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int myCount = 0;
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 660,
          width: double.infinity,
            color: Color(0xFF231F20),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (myIndex == 0) {
                      myIndex = 1;
                    } else {
                      myIndex = 0;
                    }
                    setState(() {});
                  },
                  child: Icon(Icons.menu),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(CircleBorder()),
                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                    backgroundColor: MaterialStateProperty.all(
                        Color(0xFF2F2A2B)), // <-- Button color
                    overlayColor:
                    MaterialStateProperty.resolveWith<Color?>((states) {
                      if (states.contains(MaterialState.pressed))
                        return Color(0xFF373132); // <-- Splash color
                    }),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      myCount = 0;
                    });
                  },
                  child: Icon(Icons.replay_sharp),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(CircleBorder()),
                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                    backgroundColor: MaterialStateProperty.all(
                        Color(0xFF2F2A2B)), // <-- Button color
                    overlayColor:
                    MaterialStateProperty.resolveWith<Color?>((states) {
                      if (states.contains(MaterialState.pressed))
                        return Color(0xFF373132); // <-- Splash color
                    }),
                  ),
                ),

      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: SizedBox(
            width: 400,
            height: 400,
            child: Center(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (myCount < 9999999)
                        myCount++;
                      else
                        myCount = 0;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/assets/Group3.png'),
                      ),
                    ),
                    child: Text(
                      myCount.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                  ),
                ) //Stack
            ), //Center
          ),
        ), //SizedBox
      )

              ],
            ),
          ),
        )
      ],
    );
  }

  Widget buildCenter(int typeOfStyle) {
    if (typeOfStyle == 0)
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: SizedBox(
            width: 400,
            height: 400,
            child: Center(
                child: Stack(
                    fit: StackFit.expand,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    children: [
                      Image.asset('images/assets/Group_17812.png'),
                      Positioned(
                          bottom: 255,
                          left: 110,
                          child: Container(

                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                DigitalNumber(
                                  value: 8,
                                  color: Colors.black12,
                                  height: 35,
                                ),
                                DigitalNumber(
                                  value: 8,
                                  color: Colors.black12,
                                  height: 35,
                                ),
                                DigitalNumber(
                                  value: 8,
                                  color: Colors.black12,
                                  height: 35,
                                ),
                                DigitalNumber(
                                  value: 8,
                                  color: Colors.black12,
                                  height: 35,
                                ),
                                DigitalNumber(
                                  value: 8,
                                  color: Colors.black12,
                                  height: 35,
                                ),
                                DigitalNumber(
                                  value: 8,
                                  color: Colors.black12,
                                  height: 35,
                                ),
                              ],
                            ),
                          )),
                      Positioned(
                          bottom: 255,
                          left: 110,
                          child: Container(
                            width: 150,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: numCration(myCount)),
                          )),
                      Positioned(
                        bottom: 90,
                        left: 137,
                        child: NiceButtons(
                          stretch: false,
                          gradientOrientation: GradientOrientation.Horizontal,
                          onTap: (finish) {
                            setState(() {
                              myCount++;
                            });
                          },
                          startColor: Colors.white,
                          endColor: Colors.white70,
                          borderColor: Colors.white54,
                          height: 100,
                          width: 100,
                          borderRadius: 200,
                          child: Text(
                            '',
                          ),
                        ),
                      ),
                    ]) //Stack
            ), //Center
          ),
        ), //SizedBox
      );
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: SizedBox(
          width: 400,
          height: 400,
          child: Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (myCount < 9999999)
                      myCount++;
                    else
                      myCount = 0;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/assets/Group3.png'),
                    ),
                  ),
                  child: Text(
                    myCount.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ),
              ) //Stack
          ), //Center
        ),
      ), //SizedBox
    );
  }

  List<Widget> numCration(int num) {
    if (num.toString().length >= 7) num = 0;
    List<Widget> allList = [];
    List<int> listOfNum =
    num.toString().split('').map((e) => int.parse(e)).toList();
    listOfNum = listOfNum.reversed.toList();
    for (var index = 5; index >= 0; index--) {
      if (index < listOfNum.length) {
        allList.add(DigitalNumber(
          value: listOfNum[index],
          color: Colors.black,
          height: 35,
        ));
      } else {
        allList.add(DigitalNumber(
          value: 8,
          color: const Color(0xFFFFFF),
          height: 35,
        ));
      }
    }
    return allList;
  }
}
