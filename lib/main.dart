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
        primarySwatch: Colors.blue,
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
int _curr = 0;
List<Widget> body = const [
  Icon(Icons.home),
  Icon(Icons.menu),
  Icon(Icons.person),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Center(
        child: body[_curr],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _curr,
        onTap: (int newIndex){
          setState(() {
            _curr = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon:Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'menu',
            icon:Icon(Icons.menu),
          ),
          BottomNavigationBarItem(
            label: 'person',
            icon:Icon(Icons.person),
          ),
        ]
      ),
    );
  }
}


