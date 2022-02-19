import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';
import 'package:atari_game/games/tetrisScreen.dart';

class MarioScreen extends StatefulWidget {
  const MarioScreen({Key? key}) : super(key: key);

  @override
  _MarioScreenState createState() => _MarioScreenState();
}

class _MarioScreenState extends State<MarioScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill ,image: AssetImage("lib/images/gameConsoleNew.png"),
                ),
              ),
            ),
            Positioned(
              left: width/8,
              top: height/15,
              child: Container(
                width: width/1.32,
                height: height/2.9,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(12)
                ),
                /*child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          color: Colors.blue,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.brown,
                        ),
                      ),
                    ],
                  ),*/
              ),
            ),
            Positioned(
              left: width/1.29,
              top:  height/1.87,
              child: AnimatedButton(
                width: width/6.2,
                height: width/6.2,
                color: Colors.grey,
                shape: BoxShape.circle,
                onPressed: () {

                },
                child: Text(
                  "A",
                ),
              ),
            ),
            Positioned(
              left: width/1.77,
              top:  height/1.67,
              child: AnimatedButton(
                width: width/6.2,
                height: width/6.2,
                color: Colors.grey,
                shape: BoxShape.circle,
                onPressed: () {  },
                child: Text(
                  "B",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
