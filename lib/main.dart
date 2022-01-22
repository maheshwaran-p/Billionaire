import 'package:billionaire/app/locator.dart';
import 'package:billionaire/first.dart';
import 'package:billionaire/second.dart';
import 'package:billionaire/xscreens/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupLocator();
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => LoginBloc()),
  ], child: MyApp()));
}



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
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
                      title: Text("Dash Board"),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                    ListTile(
                      title: Text("Leader Board"),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                  ],
                ),
              ),
            )));
  }
}
