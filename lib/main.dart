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
          AnimatedPhysicalModel(
              child: SizedBox(
                height: 120.0,
                width: 120.0,
                child: Icon(Icons.android_outlined),
              ),
              curve: Curves.fastOutSlowIn,
              shape: BoxShape.rectangle,
              elevation: f ? 0 : 6.0,
              color: Colors.white30,
              shadowColor: Colors.black,
              duration: Duration(milliseconds: 500)
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: (){
            setState(() {
              f = !f;
            });
          }, child: Text('Click'))
        ],
      ),
    );
  }
}


