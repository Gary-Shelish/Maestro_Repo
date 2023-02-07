import 'package:flutter/material.dart';
import 'package:helloworld/A_Test.dart';
import 'package:helloworld/correct.dart';
import 'package:helloworld/incorrect.dart';

class G_Test extends StatefulWidget {
  const G_Test({Key? key}) : super(key: key);
  _G_TestState createState() => _G_TestState();
}

class _G_TestState extends State<G_Test> {
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
              const Text('What note is displayed on the keyboard?',
                  style: TextStyle(fontSize: 25)),
              const Spacer(
                flex: 1,
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/gKey.png', scale: 4),
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
                                    const Incorrect(G_Test())));
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
                                builder: (context) => const Correct(A_Test())));
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
                                    const Incorrect(G_Test())));
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
                                    const Incorrect(G_Test())));
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
