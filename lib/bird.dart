import 'package:flutter/material.dart';

class Bird extends StatelessWidget {
  final birdY;
  final double width;
  final double height;
  const Bird({Key? key,required this.width,required this.birdY,required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0,birdY),
      height: this.height,
      width: this.width,
      child: Image.asset("lib/images/bird.png"),
    );
  }
}
