

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
  late AnimationController controller;

  @override
  void initState(){
    controller = AnimationController(
      vsync: this,
        duration: Duration(seconds: 5),
    )..addListener(() {
      setState(() {});
    });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open'),
          onPressed: (){
            ScaffoldMessenger.of(context).showMaterialBanner(
                MaterialBanner(
                    padding: EdgeInsets.all(20),
                    content: Text('Subscribe'),
                    leading: Icon(Icons.notifications_active_outlined),
                    elevation: 5,
                    backgroundColor: Colors.white12,
                    actions: <Widget>[
                      TextButton(
                          onPressed: (){
                            ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                          }, child: Text('dismiss'),),
                    ],
                ),
            );
          },
        ),
      ),
    );
  }
}



