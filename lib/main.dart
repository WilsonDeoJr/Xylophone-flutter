import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void sound(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
}


 Expanded play({Color color, int soundNumber, String note}){
  return Expanded(
    child: FlatButton(
      child: Text(note,
      style: TextStyle(
        fontSize: 35,
        color: Colors.white,
      ),),

      color: color,
      onPressed: (){
        sound(soundNumber);
      },
    ),
  );

}

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('XYLOPHONE')),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,

        body: Center(
            child: SafeArea(

              child: Center(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    play(color: Colors.red, soundNumber: 1, note: 'C'),
                    play(color: Colors.green, soundNumber: 2, note: 'D'),
                    play(color: Colors.blue, soundNumber: 3, note: 'E'),
                    play(color: Colors.teal, soundNumber: 4, note: 'F'),
                    play(color: Colors.deepOrange, soundNumber: 5, note: 'G'),
                    play(color: Colors.yellow, soundNumber: 6, note: 'A'),
                    play(color: Colors.lightBlueAccent, soundNumber: 7, note: 'B'),

                  ],
                ),

              ),
            ),
          ),

      ),
    );
  }
}
