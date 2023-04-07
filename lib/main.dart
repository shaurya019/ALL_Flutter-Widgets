import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final counterBloc = context.read<CounterBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc,int>(
          builder: (context,state) {
            return Text(
              "$state",
              style: TextStyle(fontSize: 36.0),
            );
          },
        )
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              // counterAction(CounterEvent.Increment);
              counterBloc.add(CounterEvent.Increment);
            },
            heroTag: "1",
            backgroundColor: Colors.orangeAccent,
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              // counterAction(CounterEvent.Deccrement);
              counterBloc.add(CounterEvent.Deccrement);
            },
            heroTag: "1",
            backgroundColor: Colors.orangeAccent,
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              // counterAction(CounterEvent.Reset);
              counterBloc.add(CounterEvent.Reset);
            },
            heroTag: "1",
            backgroundColor: Colors.orangeAccent,
            child: Icon(Icons.loop),
          ),
        ],
      ),
    );
  }
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