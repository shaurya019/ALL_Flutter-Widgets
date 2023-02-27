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
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Center(
      child: SizedBox(
      height: 400,
    width: 300,
    child:GridTile(
    header: GridTileBar(
      backgroundColor: Colors.black45,
    leading: Icon(Icons.person),
    title: Text('Flutter map'),
    trailing: Icon(Icons.menu),
    ),
    child: Image.network(
    'https://tinyurl.com/yc4pctt5',
    fit: BoxFit.cover,
    ),
    footer: Container(
        height: 40,
        child:Center(
          child:Text('Header'),
        ),
    )
      ),
    ),

      ),
    );
  }
}



