import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill ,image: AssetImage("lib/images/gameConsole.png"),
        ),
      ),
    );
  }
}
