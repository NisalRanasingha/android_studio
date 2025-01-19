import 'package:flutter/material.dart';
import 'package:test02/screens/home_page.dart';

class SecoundScreen extends StatelessWidget {
  const SecoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Secound_Screen"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, MyWidget());
            },
            icon: Icon(Icons.home)),
      ),
      body: Center(
        child: Text("Secound Screen"),
      ),
    );
  }
}
