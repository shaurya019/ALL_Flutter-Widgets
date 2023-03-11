import 'package:flutter/material.dart';

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
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          f = !f;
        });
      },
      child: Center(
        child: Container(
          width: double.infinity,
          height: 250.0,
          color: Colors.grey,
          child: AnimatedAlign(
            alignment: f ? Alignment.topRight : Alignment.bottomLeft,
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
          ),
        ),
      ),
    );
  }
}


