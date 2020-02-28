import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello world title'),
        backgroundColor: Colors.blue
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You clicked The + Button'),
            Text('$_counter', style: TextStyle(fontSize: 25)),
            Text('Times')
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_alert),
        onPressed: () => setState(() => _counter++)
      )
    );
  }
}