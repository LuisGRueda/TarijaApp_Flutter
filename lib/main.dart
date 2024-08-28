import 'package:flutter/material.dart';
import 'package:tarija_app/screen/cardscreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
            title: const Text(
              'Chapaco d´ Corazón',
              style: TextStyle(
                  fontFamily: './assets/font/set.ttf',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            centerTitle: false,
            flexibleSpace: Container(
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                  // ignore: prefer_const_constructors
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: const <Color>[
                    Color.fromARGB(255, 99, 0, 0),
                    Color.fromARGB(255, 230, 23, 23),
                    Color.fromARGB(255, 255, 255, 255)
                  ])),
            )),
        body: const CardScreen(),
      ),
    );
  }
}
