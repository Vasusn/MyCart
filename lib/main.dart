
import 'package:flutter/material.dart';


Future<void> main() async {
 
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
 
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Text('hello')
    );
  }
}
