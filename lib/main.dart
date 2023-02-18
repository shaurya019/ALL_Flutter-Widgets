import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color.fromARGB(255, 23, 127, 245),
        primaryColor: CupertinoColors.systemOrange,
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
   return Center(
     child: Column(
       mainAxisSize: MainAxisSize.min,
        children: [
          CupertinoButton(
            onPressed: null,
            child: Text('Enabled'),
          ),
          SizedBox(height: 30),
          CupertinoButton.filled(child: Text('Enabled'), onPressed: null)
       ],
     ),
   );
  }
}