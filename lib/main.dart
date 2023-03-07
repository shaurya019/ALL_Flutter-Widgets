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
 var arrData = [
   {
     'name':'Tanuja',
     'mno':'9717054182',
     'age':'43',
   },
   {
     'name':'Jitander',
     'mno':'9899963630',
     'age':'51',
   },
   {
     'name':'Shaurya',
     'mno':'8383867619',
     'age':'22',
   }
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widget',),
      ),
      body: Container(
        child: ListView(
          children: arrData.map((value) =>
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(value['name'].toString()),
              subtitle: Text(value['mno'].toString()),
              trailing: CircleAvatar(
                radius:15,
                backgroundColor: Colors.blueAccent,
                child:Text(value['age'].toString()),)
            ),
          ).toList(),
        ),
      ),
    );
  }
}


