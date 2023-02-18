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
    return CupertinoPageScaffold(
     backgroundColor: Color.fromARGB(255, 18, 32, 47),
     navigationBar: CupertinoNavigationBar(
       backgroundColor: CupertinoColors.systemGrey.withOpacity(0.6),
       middle: Text('Flutter Mapp'),
     ),
     child: Stack(
       children: <Widget>[
         Image.network(
           'https://img.freepik.com/free-vector/hand-drawn-illustration-people-with-smartphone-marketing_52683-66659.jpg?w=1380&t=st=1676715382~exp=1676715982~hmac=7914b29d311f1892ecf96ef47e51b83370621004b6ffc38bde121dd738cae30e',
           fit: BoxFit.cover,
           height: double.infinity,
         ),
       ],
     ),
    );
  }
}

