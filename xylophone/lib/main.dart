import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void playSound(y) {
    final player = AudioCache();
    player.play('note$y.wav');
  }

  Expanded buildKey(x, int y) {
    return Expanded(
      child: FlatButton(
        color: x,
        onPressed: () {
          playSound(y);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.indigo, 5),
              buildKey(Colors.purple, 6),
              buildKey(Colors.blue, 7),
            ],
          ),
        ),
      ),
    );
  }
}
