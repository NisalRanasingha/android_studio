import 'package:flutter/material.dart';
import 'package:test02/screens/secound_screen.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int count = 0;
  void increment() {
    setState(() {
      count = count + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tutorial 10"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You have pushed button times",
              style: TextStyle(fontSize: 25.0),
            ),
            Text(
              count.toString(),
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          //   return SecoundScreen();
          // }));
          Navigator.of(context).pushNamed('/second');
        },
      ),
    );
  }
}
