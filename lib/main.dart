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
        child: Center(
          child: CupertinoButton(
            child: Text("click me"),
            onPressed: (){
              showCupertinoModalPopup(context: context, builder: (BuildContext builder){
                return CupertinoPopupSurface(
                    child: Container(
                  color: CupertinoColors.white,
                  alignment: Alignment.center,
    width: double.infinity,
    height: 400,
    child: Center(
    child: CupertinoButton(
    child: Text('Close'),
    onPressed: (){
      Navigator.of(context).pop();
    },
    ),
    ),
                ),
                );
              },
                );
            },
          ),
        ),
    );
  }
}

