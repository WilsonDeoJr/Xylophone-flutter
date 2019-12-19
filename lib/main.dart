import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void sound(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('XYLOPHONE'),
          backgroundColor: Colors.grey,
        ),
        backgroundColor: Colors.black,

        body: Padding(

          padding: const EdgeInsets.all(59.0),
          child: Center(
            child: SafeArea(

              child: Center(
               child: Column(
                  children: <Widget>[
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                        width: 300.0,
                         height: 50.0,
                         child: FlatButton(
                           child: Center(
                             child: Text(
                               'C',
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 30,
                                   ),
                             ),
                           ),
                           color: Colors.blue,
                            onPressed: (){
                            sound(1);
                            },
                          )
                    ),
                     ),
                    Padding(

                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 300.0,
                          height: 50.0,

                          child: FlatButton(
                            child: Center(
                              child: Text(
                                'D',
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white
                                ),
                              ),
                            ),
                            color: Colors.green,
                            onPressed: (){
                              sound(2);
                            },
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 300.0,
                          height: 50.0,
                          child: FlatButton(
                            child: Text(
                              'E',
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            color: Colors.red,
                            onPressed: (){
                              sound(3);
                            },
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 300.0,
                          height: 50.0,
                          child: FlatButton(
                            child: Center(
                              child: Text(
                                'F',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                ),
                              ),
                            ),
                            color: Colors.orange,
                            onPressed: (){
                              sound(4);
                            },
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 300.0,
                          height: 50.0,
                          child: FlatButton(
                            child: Center(
                              child: Text(
                                'G',
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            color: Colors.pink,
                            onPressed: (){
                              sound(5);
                            },
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 300.0,
                          height: 50.0,
                          child: FlatButton(
                            child: Center(
                              child: Text(
                                'A',
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            color: Colors.lightBlueAccent,
                            onPressed: (){
                              sound(6);
                            },
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 300.0,
                          height: 50.0,
                          child: FlatButton(
                            child: Center(
                              child: Text(
                                'B',
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white
                                ),
                              ),
                            ),
                            color: Colors.deepOrangeAccent,
                            onPressed: (){
                              sound(7);
                            },
                          )
                      ),
                    ),
                  ],
                ),

              ),
            ),
          ),
        ),
      ),
    );
  }
}
