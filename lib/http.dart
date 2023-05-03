import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class http extends StatefulWidget {
  const http({Key? key}) : super(key: key);

  @override
  State<http> createState() => _httpState();
}

class _httpState extends State<http> {
  List<dynamic> posts = [];
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPosts();
  }
  
  void getPosts() async {
    try{
      Dio dio = Dio();
      Response response = await dio.get("https://jsonplaceholder.typicode.com/posts");
      setState(() {
        posts = response.data;
      });
      print(posts);
    } catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Http"),
      ),
      body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (BuildContext context,int index){
            return ListTile(
            title: Text(posts[index]["title"]),
            subtitle: Text(posts[index]["body"]),
            );
    },
    ));
  }
}



