import 'package:flutter/material.dart';

class about extends StatelessWidget {
  const about({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("About"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text(
                'Name: ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,),
              ),
              Text('Arkaengel Wenrick A. Bonifacio', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text('Age: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,),),
              Text('22', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text('Birthday: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,),),
              Text('November 29, 2000', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text('Address: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,),),
              Text('Paranaque City', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text('School: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,),),
              Text('Technological University of \n the Philippines', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
            ],
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Image(image: AssetImage("images/pic.jpg"),height: 200, width: 125,),
             Image(image: AssetImage("images/pic2.jpg"),height: 200, width: 125,),
             Image(image: AssetImage("images/pic3.jpg"),height: 200, width: 125,),
           ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text('Facebook: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
              Text('Arkaengel Wenrick Bonifacio', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text('Gmail: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
              Text('bonifacioarkaengel@gmail.com', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text('Instagram: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
              Text('Arkeyngel', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
            ],
          ),

        ],
      ),
    );
  }
}
