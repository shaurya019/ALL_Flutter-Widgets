

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
      // showSemanticsDebugger: true,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
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

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{
  int click = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Padding(
        padding: EdgeInsets.all(40),
        child: OverflowBar(
          spacing: 8,
          children: <Widget>[
            ElevatedButton(onPressed: () {}, child: Text('Flutter Mapp')),
           ElevatedButton(onPressed: () {}, child: Text('Flutter Mapp')),
          ElevatedButton(onPressed: () {}, child: Text('Flutter Mapp')),
         // ElevatedButton(onPressed: () {}, child: Text('Flutter Mapp')),
          ],
        )
      )
    );
  }
}



