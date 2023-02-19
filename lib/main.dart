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
   bool _isExpanded = false;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
         Container(
           color: Colors.orangeAccent,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Container(
                   padding: EdgeInsets.all(10.0),
                   child: Text('Title',style: TextStyle(color: Colors.white,fontSize: 22),),
                 ),
                 ExpandIcon(
                   isExpanded: _isExpanded,
                   color: Colors.white,
                   expandedColor: Colors.black,
                   onPressed: (bool isExpanded){
                    setState(() {
                      _isExpanded = !isExpanded;
                    });
                   },
                 )
               ]
           ),
         ),
         if(_isExpanded)
           Padding(
             padding:EdgeInsets.all(15.0),
             child: Text('Hi'),
           ),
       ],
     ),
    );
  }
}



