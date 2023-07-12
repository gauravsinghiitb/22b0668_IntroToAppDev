import 'package:flutter/material.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Counter Value:',
                style: TextStyle(fontSize: 24),
              ),
              Text(
                '$counter',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: incrementCounter,
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
            SizedBox(width: 16),
            FloatingActionButton(
              onPressed: decrementCounter,
              tooltip: 'Decrement',
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
