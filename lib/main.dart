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
 var emailText = TextEditingController();
 var passText = TextEditingController();
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widget',),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
            controller: emailText,
          decoration: InputDecoration(
            hintText: 'Enter Email',
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11),
            borderSide: BorderSide(
              color: Colors.deepOrange,
              width: 2,
            )
        ),
            enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
        borderSide: BorderSide(
          color: Colors.blueAccent,
          width: 2,
        )
        ),

            prefixIcon: Icon(Icons.email,color: Colors.orange,),
        ),
        ),
              SizedBox(height: 30,),
              TextField(
      controller: passText,
    obscureText: true,
    decoration: InputDecoration(
      hintText: 'Enter password',
    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(11),
    borderSide: BorderSide(
    color: Colors.deepOrange,
    width: 2,
    )
    ),
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(11),
    borderSide: BorderSide(
    color: Colors.blueAccent,
    width: 2,
    )
    ),
      suffixIcon: IconButton(
        icon: Icon(Icons.remove_red_eye,color: Colors.orange,),
        onPressed: (){

        },
      ),
      prefixIcon: Icon(Icons.password,color: Colors.orange,),
    ),
    ),
              ElevatedButton(onPressed: (){
                String uEmail = emailText.text.toString();
                String uPass = passText.text.toString();
print("Email: $uEmail,Pass:$uPass");
              }, child: Text('Login'))
            ],
          ),
        ),
      )
    );
  }
}


