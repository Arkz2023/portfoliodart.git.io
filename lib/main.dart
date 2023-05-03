import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import 'Homepage.dart';


final double coverHeight = 280;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Title ko',
      home: Homepage(),
    );
  }
}
