import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(const MyApp());
}

const KTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 38.0,
);
List<Color> arr = [
  Colors.green,
  Colors.orange,
  Colors.redAccent,
  Colors.green,
  Colors.red,
  Colors.cyan,
  Colors.blueAccent,
  Colors.pinkAccent,
  Colors.purpleAccent,
  Colors.deepPurple,
  Colors.cyanAccent,
  Colors.purple,
];

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

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int c = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: Text(
              "$c",
              style: TextStyle(fontSize: 36.0),
            ),
        floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: (){
              counterAction(CounterEvent.Increment);
            },
            heroTag:"1",
            backgroundColor: Colors.orangeAccent,
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: (){
              counterAction(CounterEvent.Deccrement);
            },
            heroTag:"1",
            backgroundColor: Colors.orangeAccent,
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: (){
              counterAction(CounterEvent.Reset);
            },
            heroTag:"1",
            backgroundColor: Colors.orangeAccent,
            child: Icon(Icons.loop),
          ),
        ],
      ),
      ),
    );
  }
  void counterAction(CounterEvent x) {
    setState(() {
      switch(x){
        case CounterEvent.Increment:
          c++;
          break;
        case CounterEvent.Deccrement:
          c--;
          break;
        case CounterEvent.Reset:
          c=0;
          break;
      }
    });
  }
}

enum CounterEvent {
  Increment,
  Deccrement,
  Reset,
}





////        Scaffold(
// //       body: Center(
// //         child: SizedBox(
// //           width: 250.0,
// //           child:Row(
// //             children: [
// //               Text('Quick',style: TextStyle(
// //                 fontSize: 70.0,
// //                 fontFamily: 'Canterbury',
// //                   color: Colors.blueAccent,
// //               ),),
// //               DefaultTextStyle(
// //                 style: const TextStyle(
// //                   fontSize: 70.0,
// //                   fontFamily: 'Canterbury',
// //                   color: Colors.blueAccent,
// //                   fontWeight: FontWeight.bold
// //                 ),
// //                 child: AnimatedTextKit(
// //                   animatedTexts: [
// //                     ScaleAnimatedText('k'),
// //                     ScaleAnimatedText('k'),
// //                     ScaleAnimatedText('k'),
// //                     ScaleAnimatedText('k'),
// //                     ScaleAnimatedText('k'),
// //                     ScaleAnimatedText('k'),
// //                   ],
// //                   onTap: () {
// //                     print("Tap Event");
// //                   },
// //                 ),
// //               ),
// //             ],
// //           )
// //         ),
// //       ),
// //     );
// //   }
// // }