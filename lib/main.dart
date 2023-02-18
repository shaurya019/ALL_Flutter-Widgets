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
        child: Builder(
          builder: (context) => ElevatedButton(onPressed: (){
            Scaffold.of(context).openDrawer();
          }, child: Text("Open")),
        ),
      ),
     drawer: Drawer(
       child: ListView(
         children: [
           ListTile(
             title: Text("Item 1"),
             onTap: () {},
           ),
           ListTile(
             title: Text("Item 2"),
             onTap: () {},
           )
         ],
       ),
     ),
    );
  }
}



