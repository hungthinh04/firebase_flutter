import 'package:demo/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lập trình nhúng',
      theme: ThemeData( brightness: Brightness.light, primarySwatch: Colors.blue),
      home: HomeScreen()
    );
  }
}
