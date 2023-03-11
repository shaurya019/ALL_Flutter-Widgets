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
late final AnimationController _controller = AnimationController(
  duration: Duration(seconds: 10),
  vsync: this,
)..repeat();

   @override
   void dipose(){
     super.dipose();
   }

  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        child: FlutterLogo(
          size: 100,
        ),
        builder: (BuildContext context, Widget? child){
          return Transform.rotate(
              angle: _controller.value*2.0*math.pi,
            child: child,
          );
        },
      ),
    );
  }
}


