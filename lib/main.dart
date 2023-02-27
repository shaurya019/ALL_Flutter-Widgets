

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
 bool ignore = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    ignore = !ignore;
                  });
                }, child: Text(
                ignore ? 'Blocked' : 'ALL good',
            ),
            style: ElevatedButton.styleFrom(
              primary: ignore ? Colors.red : Colors.green,
            ),),
            IgnorePointer(
              ignoring: ignore,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Click me'
                ),
              ),

            )
          ],
        ),
      ),
    );
  }
}



