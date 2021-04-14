
import 'package:diaadia/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.amber,
        buttonColor: Colors.red,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder()
        ),
        buttonTheme: ButtonThemeData(
          height: 50.0,
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            ),
        )
        ),
      home: MyHomePage(),  
    );
  }
}

