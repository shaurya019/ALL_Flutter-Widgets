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
      title: 'Flutter Demo',
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color.fromARGB(255, 18, 32, 47),
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
   return CupertinoPageScaffold(
     child: Center(
       child: CupertinoButton(
        onPressed: (){
          showCupertinoDialog(
              context: context,
              builder: (BuildContext context) => CupertinoAlertDialog(
                title: const Text('Alert'),
                content: const Text('Are you subscribe to flutter Mapp'),
                actions: <CupertinoDialogAction>[
                  CupertinoDialogAction(
                    child: Text('No'),
                    isDestructiveAction: true,
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoDialogAction(
                    child: Text('Yes'),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
          );
        },
         child: Text('CupertinoDialogAction'),
       ),
     ),
   );
  }
}