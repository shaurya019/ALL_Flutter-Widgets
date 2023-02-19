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
   String dropdownValue = 'one';
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
     body: Column(
       children: [
         Expanded(
           flex: 2,
           child: Container(
           color:Colors.blue,
           height: 200,
         ),
         ),
         Expanded(
           flex: 1,
           child: Container(
             color:Colors.orange,
             height: 200,
           ),
         ),
         Expanded(
           flex: 4,
           child: Container(
             color:Colors.redAccent,
             height: 200,
           ),
         ),
       ],
     ),
    );
  }
}



