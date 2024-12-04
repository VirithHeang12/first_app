import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

const colors = [Colors.blue, Colors.green, Colors.yellow];

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: const GradientContainer(colors)),
  ));
}
