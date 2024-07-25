import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(int sound) {
    final player = AudioPlayer();
    player.play(AssetSource('note$sound.wav'));
  }

  Expanded buildKey({int sound = 1, Color color = Colors.black12}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
              side: BorderSide(color: color),
            ),
          ),
          backgroundColor: WidgetStateProperty.all(color),
        ),
        onPressed: () {
          playSound(sound);
        },
        child: const Text(''),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(sound: 1, color: Colors.red),
              buildKey(sound: 2, color: Colors.orange),
              buildKey(sound: 3, color: Colors.yellow),
              buildKey(sound: 4, color: Colors.green),
              buildKey(sound: 5, color: Colors.teal),
              buildKey(sound: 6, color: Colors.blue),
              buildKey(sound: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
