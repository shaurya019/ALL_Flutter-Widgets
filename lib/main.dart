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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Center(
      child: Icon(
          Icons.flutter_dash,
         color: Colors.orangeAccent,
        size: 200,
        shadows: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(8,8),
            spreadRadius: 10,
            blurRadius: 10,
          ),
        ],
      ),
    );
  }
  // const MyHomePage({super.key, required this.title});
  // final String title;
  //
  // @override
  // State<MyHomePage> createState() => _MyHomePageState();
}

// class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{
//   int _counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body:Center(
//         child: Image.network(
//           'https://tinyurl.com/yc4pctt5',
//           color: Colors.blue,
//           colorBlendMode: BlendMode.colorBurn,
//         ),
//       ),
//     );
//   }
// }



