import 'package:flutter/material.dart';
import 'package:perangkat_bergerak/home_page.dart';
import 'package:perangkat_bergerak/styles.dart';

void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: pageBgColor,
        appBar: AppBar(
          backgroundColor: headerBackColor,
          title: Text(
            "Kuliner Nusantara",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
      body: HomePage(),
      )
    );
  }
}

