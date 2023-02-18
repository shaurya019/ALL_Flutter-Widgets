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

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
   List<int> items = List<int>.generate(100, (int index) => index);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.deepOrange,
            ),
            const Divider(
              color: Colors.black,
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 40,
            ),

            Container(
              height: 200,
              width: double.infinity,
              color: Colors.deepOrange,
            )
          ],
        ),
      ),
    );
  }
}



