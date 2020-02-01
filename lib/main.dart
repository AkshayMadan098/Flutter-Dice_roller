import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:math';
main(){
  runApp(Myapp());
}
class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
var color;
Timer time;
  @override
  void initState() {
    time=new Timer.periodic(Duration(seconds: 2), (Timer time)
    {
      setState(() {
          Random r=new Random();
   color=Color.fromARGB(255, r.nextInt(256), r.nextInt(256), r.nextInt(256));

     Random r1=new Random();

      });
    });
    
    super.initState();
  }
  @override
  void dispose() {
    time.cancel();
    super.dispose();
  }
  var imagename="/dice1.png";
  var imagename1="/dice11.png";
  onPressed(){
    int r= new Random().nextInt(6)+1;
    int r1=new Random().nextInt(6)+1;
    setState(() {
      imagename="/dice$r.png"; 
      imagename1="/dice$r1.png";
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      title: "Dice Roller",
      home: Scaffold(
        backgroundColor: color,
        appBar: AppBar(
          title: Text("Dice Roller"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage("asset"+imagename),
              height: 220,
              width: 400
              ,
            ),
            Image(
              image: AssetImage("asset"+imagename1),
              height: 220,
              width: 400
              ,
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: MaterialButton(
               color: Colors.green,
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
               child: Text("Rotate"),
               onPressed: (){
                 onPressed() ;
               },
              ),
            ),
          ],
        ),
      ),
    );
  }
}