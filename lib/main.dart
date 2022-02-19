import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'homeScreen.dart';

void main() {
  runApp(const MyApp());
  //SystemChrome.setEnabledSystemUIOverlays ([]);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
