import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class flare extends StatefulWidget {
  @override
  _flareState createState() => _flareState();
}

class _flareState extends State<flare> {
  String animationName = "Untitled";
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              FlatButton.icon(onPressed: callMe, icon: Icon(Icons.android), label: Text("Double click")),
              SizedBox(
                height: 4,
              ),
              clicked?Flares(animationName):Container(
                height: 200,
                width: 200,
              )
            ],
        ),
      ),
    );
  }


  void callMe(){
    if(clicked) {
      setState(() {
        clicked = false;
      });
    }
      else{
        setState(() {
          clicked = true;
        });
    }
    }

  }


Widget Flares(String animationName){
  return
    Container(
      height: 200,
      width: 200,
        child: FlareActor(
          'assets/Staring.flr',
          alignment: Alignment.center,
          fit: BoxFit.contain,
          animation: "Start",
      )
    );
}




