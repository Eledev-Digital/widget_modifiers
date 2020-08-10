import 'package:flutter/material.dart';
import 'package:widget_modifiers/modifiers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Modifiers',
      home: Scaffold(
        body: Stack(
          children: [
            Text("Hello World")
                .padding()
                .rotate(10)
                .align(Alignment.center)
                .onTap(() => print("hello World")),

            Container(color: Colors.red)
                .frame(height: 100, width: 200)
                .position(bottom: 20, left: 30)
          ],
        ).padding(EdgeInsets.all(20)),
      ),
    );
  }
}
