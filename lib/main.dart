import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(Xylo());

class Xylo extends StatefulWidget {
  @override
  _XyloState createState() => _XyloState();
}

class _XyloState extends State<Xylo> {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  buildKey(int noteNum, Color buttonColor) {
    return Expanded(
      child: MaterialButton(
        enableFeedback: false,
        color: buttonColor,
        onPressed: () {
          playSound(noteNum);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.teal),
              buildKey(6, Colors.blue),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
