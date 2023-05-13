import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({Color color , int soundNumber}) {
   return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
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
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             buildKey(color: Colors.red, soundNumber: 1),
             buildKey(color: Colors.brown, soundNumber: 2),
             buildKey(color: Colors.green, soundNumber: 3),
             buildKey(color: Colors.grey, soundNumber: 4),
             buildKey(color: Colors.blue, soundNumber: 5),
             buildKey(color: Colors.black, soundNumber: 6),
             buildKey(color: Colors.yellow, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
