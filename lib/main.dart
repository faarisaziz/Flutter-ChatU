import 'package:flutter/material.dart';
import './chatu_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatU',
      theme: ThemeData(
        primaryColor: Color(0xff007aff),
        accentColor: Color(0xff99caff),
      ),
      debugShowCheckedModeBanner: false,
      home: ChatUHome(),
    );
  }
}
