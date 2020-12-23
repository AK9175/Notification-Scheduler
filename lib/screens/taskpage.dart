import 'package:flutter/material.dart';
import 'package:myapp/methods.dart';
import 'package:myapp/prototype.dart';

class SecondRoute extends StatelessWidget {
  Methods method = new Methods();
  Prototype type = new Prototype();
  String desc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add your tasks"),
        ),
        body: Center(
            child: Column(children: <Widget>[
          Container(
              width: 400,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                onChanged: (val) {
                  desc = val;
                },
                autocorrect: true,
                decoration: InputDecoration(hintText: 'Enter Description'),
              )),
        ])),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FloatingActionButton.extended(
                      heroTag: "cancel",
                      label: Text('Cancel'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      backgroundColor: Colors.red,
                      icon: Icon(Icons.cancel)),
                  FloatingActionButton.extended(
                      heroTag: "save",
                      label: Text('Save'),
                      onPressed: () =>
                          {method.getDesccription(desc, type.tasks)},
                      backgroundColor: Colors.red,
                      icon: Icon(Icons.save))
                ])));
  }
}
