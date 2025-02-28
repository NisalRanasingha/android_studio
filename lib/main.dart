import 'package:flutter/material.dart';
import 'package:test02/screens/home_page.dart';
import 'package:test02/screens/secound_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyWidget(),
        routes: <String, WidgetBuilder>{
          '/second': (context) => SecoundScreen(),
        });
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("Flutter"),
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              )
            ],
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ])),
        body: TabBarView(children: [
          Center(
            child: Container(
              child: Text("A"),
              width: 50.0,
              height: 50.0,
              color: Colors.pink,
              padding: EdgeInsets.all(20.0),
            ),
          ),
          Center(
            child: Text("B"),
          ),
          Center(
            child: Text("C"),
          ),
        ]),
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Column"),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [Text("Text1"), Text("Head1")],
            ),
            Column(
              children: [Text("Text1")],
            ),
            Column(
              children: [Text("Text1")],
            )
          ],
        ),
      ),
    );
  }
}

// class MyHouse extends StatelessWidget {
//   int count = 0;

//   void increment() {
//     count = count + 1;
//     print(count);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Tutorial 10"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "You have pushed button times",
//               style: TextStyle(fontSize: 25.0),
//             ),
//             Text(
//               count.toString(),
//               style: TextStyle(fontSize: 20.0),
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: increment,
//       ),
//     );
//   }
// }
