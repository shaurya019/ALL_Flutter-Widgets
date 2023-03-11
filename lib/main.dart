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
 double _opacity = 1.0;
 @override
 void dispose() {
   _controller.dispose ();
   super.dispose ();
 }
  Widget build(BuildContext context) {
    return Center(
      child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 2),
            child: FlutterLogo(
              size: 50,
            ),
          ),
          ElevatedButton(
              onPressed: (){
            setState(() {
              () => _opacity = _opacity == 0 ? 1.0 : 0.0,
            });
          }, child: Text('Fade Logo'))
        ],
      ),
    );
  }
}


