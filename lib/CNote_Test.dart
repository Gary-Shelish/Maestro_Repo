import 'package:flutter/material.dart';
import 'package:helloworld/DNote_Test.dart';
import 'package:helloworld/correct.dart';
import 'package:helloworld/incorrect.dart';

class CNote_Test extends StatefulWidget {
  const CNote_Test({Key? key}) : super(key: key);
  _CNote_TestState createState() => _CNote_TestState();
}

class _CNote_TestState extends State<CNote_Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson 1 Chapter 2 Test'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Sheet Music Reading - C, D, and E'),
              const Spacer(
                flex: 3,
              ),
              const Text('What note is displayed on the sheet music?',
                  style: TextStyle(fontSize: 25)),
              const Spacer(
                flex: 1,
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/cNote.png', scale: 1.75),
                  ],
                )
              ]),
              const Spacer(flex: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  ElevatedButton(
                      child: const Text('C'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Correct(DNote_Test())));
                      }),
                  const Spacer(
                    flex: 2,
                  ),
                  ElevatedButton(
                      child: const Text('D'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Incorrect(CNote_Test())));
                      }),
                  const Spacer(
                    flex: 2,
                  ),
                  ElevatedButton(
                      child: const Text('E'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Incorrect(CNote_Test())));
                      }),
                  const Spacer()
                ],
              ),
              const Spacer(),
            ]),
      ),
    );
  }
}
