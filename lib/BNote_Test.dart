import 'package:flutter/material.dart';
import 'package:helloworld/congradulations3.dart';
import 'package:helloworld/correct.dart';
import 'package:helloworld/incorrect.dart';

class BNote_Test extends StatefulWidget {
  const BNote_Test({Key? key}) : super(key: key);
  _BNote_TestState createState() => _BNote_TestState();
}

class _BNote_TestState extends State<BNote_Test> {
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
              const Text('Sheet Music Reading - F, G, A, and B'),
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
                    Image.asset('assets/bNote.png', scale: 4),
                  ],
                )
              ]),
              const Spacer(flex: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  ElevatedButton(
                      child: const Text('F'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Incorrect(BNote_Test())));
                      }),
                  const Spacer(
                    flex: 2,
                  ),
                  ElevatedButton(
                      child: const Text('G'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Incorrect(BNote_Test())));
                      }),
                  const Spacer(
                    flex: 2,
                  ),
                  ElevatedButton(
                      child: const Text('A'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Incorrect(BNote_Test())));
                      }),
                  const Spacer(
                    flex: 2,
                  ),
                  ElevatedButton(
                      child: const Text('B'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Correct(Congradulations3())));
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
