import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int file) {
    final cache = AudioCache();
    cache.play('note$file.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              addFlatButton(text: "", color: Colors.orange, sound: 1),
              addFlatButton(text: "", color: Colors.red, sound: 2),
              addFlatButton(text: "", color: Colors.yellow, sound: 3),
              addFlatButton(text: "", color: Colors.blue, sound: 4),
              addFlatButton(text: "", color: Colors.green, sound: 5),
              addFlatButton(text: "", color: Colors.brown, sound: 6),
              addFlatButton(text: "", color: Colors.purple, sound: 7),
            ],
          ),
        ),
      ),
    );
  }

  Expanded addFlatButton({String text, Color color, int sound}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(sound);
        },
        color: color,
        child: Text(text),
      ),
    );
  }
}
