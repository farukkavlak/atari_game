import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter/services.dart';
import 'package:atari_game/games/tetrisScreen.dart';
import 'package:atari_game/games/marioScreen.dart';
import 'package:atari_game/games/flappyBirdScreen.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> emojiList = [FlappyBirdScreen(),TetrisScreen(),MarioScreen()];
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SlidingUpPanel(
        onPanelClosed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => emojiList[indexPage]),
          );
        },
        defaultPanelState: PanelState.OPEN,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20)),
        maxHeight: height/3.5,
        minHeight: 0,
        panel: Center(
          child: Container(
            decoration: BoxDecoration(
             image: DecorationImage(
               fit: BoxFit.fill ,image: AssetImage("lib/images/tape.png"),
             ),
             borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20)),
            ),
          )
        ),
        body: ListView(
          children: [
            CarouselSlider(
                items: [
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 50, 5, 0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/images/gameTape.png"),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 50, 5, 0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/images/gameTape2.png"),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 50, 5, 0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/images/gameTape3.png"),
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  onPageChanged: (index, _) {
                    setState(() {
                      indexPage=index;
                    });
                  },
                  enlargeCenterPage:true,
                  height: 250,
                  autoPlay: false,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  viewportFraction: 0.55,
                ),
            )
          ],
        ),
      ),
    );
  }
}
