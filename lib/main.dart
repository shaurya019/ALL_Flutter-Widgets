

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
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          index = 1;
                        });
                      },
                      child: Text("1")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          index = 2;
                        });
                      },
                      child: Text("2")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          index = 3;
                        });
                      },
                      child: Text("3")),
                ]
            ),
            IndexedStack(
              index: index,
                children: <Widget>[
                  Center(
                    child: Image.network("https://hips.hearstapps.com/hmg-prod/images/gettyimages-3091504.jpg"),
                  ),
                  Center(
                    child: Image.network("https://images.saymedia-content.com/.image/t_share/MTc0NDc1NTEyNDkwNTY3MzAy/an-interview-from-beyond-with-albert-einstein.jpg"),
                  ),
                  Center(
                    child: Image.network("https://img.freepik.com/premium-vector/albert-einstein-cartoon-character-has-idea_324746-781.jpg?w=2000"),
                  ),
                ],
            ),
          ],
        ),
      ),
    );
  }
}



