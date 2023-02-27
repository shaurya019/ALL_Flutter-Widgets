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
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return ListTile(
      trailing: Hero(
        tag: 'tag-1',
        child: Icon(Icons.person),
      ),
      onTap: () =>
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SecondPage(),
          ),
        ),
      title: Text('Click Me'),
    );
  }
  // const MyHomePage({super.key, required this.title});
  // final String title;
  //
  // @override
  // State<MyHomePage> createState() => _MyHomePageState();
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  return Scaffold(
  appBar: AppBar(
  title: const Text('Second Page'),
  ),
  body:Center(
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  Hero(tag: 'tag-1',
  child: Container(
  color: Colors.orangeAccent,
  height: 100,
  width: 100,
  ),
  )
  ],
  ),
  ),
  );
}
}

// class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{
//   int _counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body:Center(
//         child: Image.network(
//           'https://tinyurl.com/yc4pctt5',
//           color: Colors.blue,
//           colorBlendMode: BlendMode.colorBurn,
//         ),
//       ),
//     );
//   }
// }



