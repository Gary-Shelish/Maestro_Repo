import 'package:flutter/material.dart';
import 'package:helloworld/C_Test.dart';
import 'package:helloworld/FNote_Test.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  get child => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      home: const C_Test(),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // A widget which will be started on application startup
    );
  }
}
