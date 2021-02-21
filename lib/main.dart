import 'package:billionaire/first.dart';
import 'package:billionaire/second.dart';
import 'package:billionaire/third.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                bottom: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.home)),
                    Tab(icon: Icon(Icons.poll)),
                    // Tab(icon: Icon(Icons.help_outline_sharp)),
                  ],
                ),
                title: Text('Billionaire'),
              ),
              body: TabBarView(
                children: [
                  First(),
                  Second(),
                  //Third(),
                ],
              ),
              drawer: Drawer(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      title: Text("Ttem 1"),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                    ListTile(
                      title: Text("Item 2"),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                  ],
                ),
              ),
            )));
  }
}
