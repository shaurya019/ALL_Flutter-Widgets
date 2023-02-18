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
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color.fromARGB(255, 23, 127, 245),
        primaryColor: CupertinoColors.systemOrange,
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
   return  Scaffold(
     body: Center(
     child: SizedBox(
       width: 100,
       height: 100,
       child: CupertinoContextMenu(
         child: Image.network('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.youtube.com%2Fuser%2Fyoutube%2Fvideos&psig=AOvVaw0-WXur26MlojxkebkfCcGa&ust=1676800867943000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCKil5JLonv0CFQAAAAAdAAAAABAD'),
       actions: <Widget>[
         CupertinoContextMenuActions(
           child : Text('Action 1'),
           onPressed: (){
             Navigator.pop(context);
           },
         ),
         CupertinoContextMenuActions(
           child : Text('Action 1'),
           onPressed: (){
             Navigator.pop(context);
           },
         ),
       ],
     ),
   ),
   )
   );
  }
}