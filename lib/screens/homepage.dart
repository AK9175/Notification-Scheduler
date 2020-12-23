import 'package:flutter/material.dart';
import 'package:myapp/methods.dart';
import 'package:myapp/widgets/contents.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Methods method = new Methods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Contents(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => {method.addTask(context)},
          backgroundColor: Colors.red,
          tooltip: 'Increment',
          icon: Icon(Icons.add),
          label: Text("Add List")),
    );
  }
}
