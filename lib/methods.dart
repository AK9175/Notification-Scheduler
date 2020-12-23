import 'package:flutter/material.dart';
import 'package:myapp/prototype.dart';
import 'package:myapp/screens/taskpage.dart';

class Methods {
  Prototype type = new Prototype();

  void addTask(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SecondRoute()));
  }

  void getDesccription(String value, List<String> x) {
    x.add(value);
    print(x);
  }
}
