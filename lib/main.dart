

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
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: InputChip(
          avatar: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://tinyurl.com/5n88rk79',
            ),
          ),
          label: Text('Einstein'),
          onSelected: (bool newBool){
            setState(() {
              isSelected = !isSelected;
            });
          },
          selected: isSelected,
          selectedColor: Colors.white38,
          deleteIcon: Icon(Icons.cancel_outlined),
          onDeleted: () {},
        ),
      )
    );
  }
}



