import 'package:flutter/material.dart';
import 'package:shoe_app/views/navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoe App',
      theme: ThemeData(
      fontFamily:  'Quicksand'
      ),
      home:  MainNavigator(),
    );
  }
}

 