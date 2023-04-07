import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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

class _MyHomePageState extends State<MyHomePage> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Tap ' + x.toString() + ' times',
              style: TextStyle(fontSize: 30),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  x++;
                });
              },
              child: Container(
                padding: EdgeInsets.all(15),
                color: Colors.green[200],
                child: Text('TAP HERE', style: TextStyle(fontSize: 30),),
              ),
            ),
          ],
        ),
      ),
    );
  }

}






//        Scaffold(
//       body: Center(
//         child: SizedBox(
//           width: 250.0,
//           child:Row(
//             children: [
//               Text('Quick',style: TextStyle(
//                 fontSize: 70.0,
//                 fontFamily: 'Canterbury',
//                   color: Colors.blueAccent,
//               ),),
//               DefaultTextStyle(
//                 style: const TextStyle(
//                   fontSize: 70.0,
//                   fontFamily: 'Canterbury',
//                   color: Colors.blueAccent,
//                   fontWeight: FontWeight.bold
//                 ),
//                 child: AnimatedTextKit(
//                   animatedTexts: [
//                     ScaleAnimatedText('k'),
//                     ScaleAnimatedText('k'),
//                     ScaleAnimatedText('k'),
//                     ScaleAnimatedText('k'),
//                     ScaleAnimatedText('k'),
//                     ScaleAnimatedText('k'),
//                   ],
//                   onTap: () {
//                     print("Tap Event");
//                   },
//                 ),
//               ),
//             ],
//           )
//         ),
//       ),
//     );
//   }
// }
