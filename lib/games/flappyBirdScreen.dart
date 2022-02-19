import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';
import 'package:atari_game/games/tetrisScreen.dart';
import 'package:atari_game/utilities/constants.dart';
import 'dart:async';
import 'package:atari_game/bird.dart';

class FlappyBirdScreen extends StatefulWidget {
  const FlappyBirdScreen({Key? key}) : super(key: key);

  @override
  _FlappyBirdScreenState createState() => _FlappyBirdScreenState();
}

class _FlappyBirdScreenState extends State<FlappyBirdScreen> {
  double birdY=0;

  void jumpBird(){
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      setState(() {
        birdY-=0.05;
      });
    });
  }
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
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill ,image: AssetImage("lib/images/fpBg.png"),
                                ),
                              ),
                            ),
                            Bird(width: width/11, birdY: birdY, height: height/11),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                onPressed: jumpBird,
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
