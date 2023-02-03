import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/CNote_Test.dart';
import 'package:helloworld/FNote_Test.dart';
import 'package:helloworld/correct.dart';
import 'package:helloworld/incorrect.dart';

import 'C_Test.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  get child => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      home: const FNote_Test(),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // A widget which will be started on application startup
    );
  }
}
