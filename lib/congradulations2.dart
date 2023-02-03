import 'package:flutter/material.dart';
import 'package:helloworld/CNote_Test.dart';
import 'package:helloworld/C_Test.dart';
import 'package:helloworld/E_Test.dart';
import 'package:helloworld/F_Test.dart';

class Congradulations2 extends StatefulWidget {
  const Congradulations2({Key? key}) : super(key: key);
  _Congradulations2State createState() => _Congradulations2State();
}

class _Congradulations2State extends State<Congradulations2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Spacer(),
          const Text('Congradulations!', style: TextStyle(fontSize: 40)),
          const Spacer(
            flex: 1,
          ),
          const Text(
            'Do you want to continue to the next test?',
            style: TextStyle(fontSize: 20),
          ),
          const Spacer(flex: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 2,
              ),
              ElevatedButton(
                  child: const Text(
                    'No',
                    style: TextStyle(fontSize: 25),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const F_Test()));
                  }),
              const Spacer(
                flex: 2,
              ),
              ElevatedButton(
                  child: const Text(
                    'Yes',
                    style: TextStyle(fontSize: 25),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CNote_Test()));
                  }),
              const Spacer(flex: 2),
            ],
          ),
          const Spacer(),
        ]),
      ),
    );
  }
}
