// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors, must_be_immutable, avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.purple), home: HomePage()));
    
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;  

  void Increment() {
    count++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Meu Primeiro App"),
      ),
      body:  Center(
          child: Text(
        "CONTADOR\n$count",
        textAlign: TextAlign.center,
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon (Icons.add),
        onPressed: () {
          Increment();
        },
      ),
    );
  }
}
