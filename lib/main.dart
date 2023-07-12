import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  double count = 0;

  void inc_count() {
    setState(() {
      count++;
    });
  }

  void dec_count() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 171, 84, 187),
          title: const Text('Welcome to Counting101'),
        ),
        backgroundColor: Color.fromARGB(
            255, 224, 115, 197), // Change the background color here
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You have reached',
                selectionColor: const Color.fromARGB(255, 13, 13, 14),
                style: TextStyle(
                    fontSize: 30, color: const Color.fromARGB(255, 7, 4, 14)),
              ),
              Text(
                '$count',
                style: TextStyle(fontSize: 40),
                selectionColor: Colors.blue,
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/counter.png',
                width: 250,
                height: 250,
              )
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 171, 83, 183),
              onPressed: inc_count,
              tooltip: 'Inc',
              child: Icon(Icons.add),
            ),
            SizedBox(width: 40),
            FloatingActionButton(
              backgroundColor: Colors.deepPurple,
              onPressed: dec_count,
              tooltip: 'Dec',
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
