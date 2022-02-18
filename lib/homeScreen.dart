import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter/services.dart';
import 'gameScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget buildSheet(){
    return Container();
  }
  @override
  Widget build(BuildContext context) {
    PanelController _pc = new PanelController();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SlidingUpPanel(
        onPanelClosed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GameScreen()),
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
        body: Center(
          child: Text("This is the Widget behind the sliding panel"),
        ),
      ),
    );
  }
}
