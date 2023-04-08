import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'PostModel.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  List<PostsModel> arr = [];
  Future<List<PostsModel>> getPostApi () async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200){
      arr.clear();
      for(Map i in data){
        arr.add(PostsModel.fromJson(i));
      }
      return arr;
    }else{
      return arr;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Course'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getPostApi(),
              builder:(context ,snapsot){
                if(!snapsot.hasData)
                {
                  return Text('Loading');
                }else{
                  return ListView.builder(
                      itemCount: arr.length,
                      itemBuilder: (context,index){
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Title',style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold
                                ),),
                                Text(arr[index].title.toString()),
                                SizedBox(height: 5,),
                                Text('Description',style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold
                                ),),
                                Text(arr[index].body.toString())
                              ],
                            ),
                          ),
                        );
                      });
                }
              },),
          )
        ],
      ),
    );
  }
}
