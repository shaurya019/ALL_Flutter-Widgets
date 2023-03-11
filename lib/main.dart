import 'package:flutter/material.dart';
import 'dart:math' as math
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  bool f = false;
  double _fontsize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.min,
      children: <Widget>[
        SizedBox(
          height: 120,
          child: AnimatedDefaultTextStyle(
            duration: Duration(milliseconds:  300),
            style: TextStyle(
                fontsize : _fontsize,
              color: _color,
              fontWeight: FontWeight.bold,
            ),
            child: Text('Flutter'),
          ),
        ),
        TextButton(onPressed: (){
          setState(() {
            _fontsize : f ? 90 : 60;
            _color : f ? Colors.blue : Colors.red;
            f = !f;
          });
        }, child: Text('Switch'))
      ],
    );
  }
}


