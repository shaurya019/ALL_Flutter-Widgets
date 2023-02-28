

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
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      // themeMode: ThemeMode.dark,
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
  List<String> items = [
    "Item 1",
    "Item 2",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(Duration(seconds: 1),);
          int nextItem = items.length+1;
          items.add("items $nextItem");
          setState(() {});
          },
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: ((context,index) => Padding(padding: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(items[index]),
              tileColor: Colors.white24,
            ),)),
        ),
        color: Colors.white,
      )
    );
  }
}



