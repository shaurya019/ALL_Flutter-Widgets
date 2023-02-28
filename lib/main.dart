

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
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      // themeMode: ThemeMode.dark,
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

List<String> options = ['option 1','option 2'];

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{
  String current = options[0];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Column(
        children: <Widget>[
          RadioListTile(title: Text('option 1'),value: options[0], groupValue: current, onChanged: (value){
            setState(() {
              current = value.toString();
            });
          },),
          RadioListTile(title: Text('option 2'),value: options[1], groupValue: current, onChanged: (value){
            setState(() {
              current = value.toString();
            });
          },),
        ],
      ),
    );
  }
}



