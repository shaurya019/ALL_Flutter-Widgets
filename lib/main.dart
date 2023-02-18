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

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
   String dropdownValue = 'one';
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: Icon(Icons.menu),
          style: TextStyle(color: Colors.cyan),
          underline: Container(
            height: 2,
              color: Colors.cyan
          ),
          onChanged: (String? newValue){
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: [
            DropdownMenuItem<String>(value:'one',child: Text('one')),
            DropdownMenuItem<String>(value:'Two',child: Text('Two')),
            DropdownMenuItem<String>(value:'Three',child: Text('Three')),
          ],
        ),
      ),
    );
  }
}



