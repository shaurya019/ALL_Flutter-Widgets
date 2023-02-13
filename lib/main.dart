import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Widegts'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          Text('0' * 10000,style: const TextStyle(color: Colors.blueAccent),),
          Center(
            child: BackdropFilter(
              filter: ImageFilter.blur(
              sigmaX: 4.0,
                sigmaY: 4.0,
            ),
            child: Container(
             alignment: Alignment.center,
             width: 50,
             height: 50,
             child: const Text('Blur'),
            ),
            ),
          ),
        ],
      )
    );
  }
}


