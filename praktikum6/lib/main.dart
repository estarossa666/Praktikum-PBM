import 'package:flutter/material.dart';
import 'package:praktikum6/first.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(19, 10, 43, 1)
      ),
      home: const FirstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
