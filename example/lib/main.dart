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
                .padding(EdgeInsets.all(20))
                .rotate(180)
                .align(Alignment.topCenter)
                .onTap(() => print("hello World")),
            Container(color: Colors.red)
                .shadowCircleClipper(radius: 90, shadow: shadow())
                .align(Alignment.center),
            Container(color: Colors.blue)
                .aspectRatio(4 / 3)
                .shadowRectClipper(borderRadius: 20, shadow: shadow())
                .align(Alignment.bottomLeft)
                .padding(EdgeInsets.all(20))
                .rotate(5)

          ],
        ).padding(EdgeInsets.all(20)),
      ),
    );
  }

  Shadow shadow() => Shadow(
        color: Color.fromRGBO(0, 0, 0, 0.5),
        offset: Offset(0, 4),
        blurRadius: 8,
      );
}
