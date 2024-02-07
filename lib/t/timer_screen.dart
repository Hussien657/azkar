import 'package:flutter/material.dart';

import '../core/size_config.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({Key? key}) : super(key: key);

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  int myCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'السبحة',
          ),
        ),
        body: Container(
          height: SizeConfig.screenHeight! * 1,
          color: Colors.white60,
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      myCount = 0;
                    });
                  },
                  child: Icon(
                    Icons.replay_sharp,
                    size: SizeConfig.defaultSize! * 2,
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(CircleBorder()),
                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                    backgroundColor: MaterialStateProperty.all(
                        Color(0xff67B3D3)), // <-- Button color
                    overlayColor:
                        MaterialStateProperty.resolveWith<Color?>((states) {
                      if (states.contains(MaterialState.pressed))
                        return Color(0xFF373132); // <-- Splash color
                    }),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: SizeConfig.screenWidth! * .7,
                    height: SizeConfig.screenHeight! * .4,
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
                      child: Center(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                'images/assets/Group3.png',
                              ),
                            ),
                          ),
                          child: Text(
                            myCount.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.defaultSize! * 5),
                          ),
                        ),
                      ),
                    ) //Stack
                        ), //Center
                  ), //SizedBox
                )
              ],
            ),
          ),
        ));
  }
}
