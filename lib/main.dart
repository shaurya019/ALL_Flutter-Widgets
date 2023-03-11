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
 late AnimationController _controller;

  @override
  void initstate() {
    _controller =  AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    super.initstate();
  }

 @override
 void dispose() {
   _controller.dispose ();
   super.dispose ();
 }
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: (){
          if(f==false){
            _controller.forward();
            f = true;
          }else{
            _controller.reverse();
            f = false;
          }
        },
        child: AnimatedIcon(
          icon: AnimatedIcons.play_pause,
          progress: _controller,
          size: 100,
        ),
      ),
    );
  }
}


