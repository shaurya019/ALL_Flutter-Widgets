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
 double P = 1.0;
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
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blueAccent,
            ),
              onPressed: (){
            setState(() {
              P = P == 0 ? 100.0 : 0.0,
            });
          }, child: Text('Padding Change')),
          AnimatedPadding(
              padding: EdgeInsets.all(P),
              duration: Duration(seconds: 2),
            curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/4,
              color: Colors.blueAccent,
            ),
          )
        ],
      ),
    );
  }
}


