import 'package:flutter/material.dart';
import 'package:helloworld/E_Test.dart';
import 'package:helloworld/correct.dart';
import 'package:helloworld/incorrect.dart';

class D_Test extends StatefulWidget {
  const D_Test({Key? key}) : super(key: key);
  _D_TestState createState() => _D_TestState();
}

class _D_TestState extends State<D_Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson 1 Chapter 1 Test'),
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
              const Text('What note is displayed on the keyboard?',
                  style: TextStyle(fontSize: 25)),
              const Spacer(
                flex: 1,
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/dKey.png', scale: 4),
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
                                    const Incorrect(D_Test())));
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
                                builder: (context) => const Correct(E_Test())));
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
                                    const Incorrect(D_Test())));
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
