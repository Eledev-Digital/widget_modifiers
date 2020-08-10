import 'package:flutter/material.dart';
import 'package:widget_modifiers/widget_modifiers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Modifiers',
      home: Scaffold(
        body: Text("Hello World")
            .padding()
            .align(Alignment.topLeft)
            .onTap(() => print("hello World")),
      ),
    );
  }
}
