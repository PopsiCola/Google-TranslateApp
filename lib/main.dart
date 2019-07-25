import 'package:flutter/material.dart';
import 'animation/open_animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Translate',
      theme: ThemeData(
        primaryColor: Colors.blue[600],
        primarySwatch: Colors.blue
      ),
      home: OpenAnimation(),
    );
  }
}
