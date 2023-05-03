import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("home"),
        ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          CircleAvatar(
            radius: 100.0,
            backgroundImage: AssetImage("images/home.jpg"),
          ),
          SizedBox(height: 50,),
          Text('Arkaengel Wenrick A. Bonifacio', textAlign: TextAlign.center, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,
          backgroundColor: Colors.blue) ),
          SizedBox(height: 30,),
          Text('A fourth year student from Technological University of the Philippines',
          textAlign: TextAlign.center, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
        ],
      )



    );
  }
}

