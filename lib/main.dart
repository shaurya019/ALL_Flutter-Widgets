import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  @override
  Widget build(BuildContext context) {
    return  ClipPath(
        clipper: MyClipper(),
        child: Container(
          width: double.infinity,
          height: 300,
          color: Color(0xFF142B46),
        ),
      );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    return Path()
      ..lineTo(0,size.height)
        ..quadraticBezierTo(
            size.width/4,
            size.height-40,
            size.width/2,
            size.height-20,
        )
      ..quadraticBezierTo(
        size.width * 3/4,
        size.height,
        size.width,
        size.height-30,
      )
          ..lineTo(size.width,0);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper){
    return false;
  }
}

