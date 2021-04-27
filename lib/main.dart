import 'package:flutter/material.dart';
import 'package:tino_co/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce',
      theme: ThemeData(
        primaryColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Colors.black
          )
        ),
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),
          headline2: TextStyle(fontSize: 32, color: Colors.black),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          hintStyle: TextStyle(fontSize: 20, color: Colors.black)
        )
      ),
      home: Home()
    );
  }
}
