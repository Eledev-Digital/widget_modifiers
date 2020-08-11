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
          alignment: Alignment.center,
          children: [
            Text("Hello World")
                .font(size: 20, weight: FontWeight.bold)
                .padding(EdgeInsets.all(20))
                .background(Theme.of(context).accentColor)
                .shadowRectClipper(shadow: shadow(), borderRadius: 20)
                .rotate(10)
                .onTap(() => print("hello World"))
                .position(top:50, right:50),
            Container(color: Colors.yellow)
                .shadowCircleClipper(radius: 150, shadow: shadow())
                .align(Alignment.center)
                .opacity(0.9),
            Container(color: Colors.red)
                .aspectRatio(4 / 1)
                .shadowRectClipper(shadow: shadow(), borderRadius: 20)
                .align(Alignment.bottomCenter)
           
          ],
        ).padding(EdgeInsets.all(40)),
      ),
    );
  }

  Shadow shadow() => Shadow(
        color: Color.fromRGBO(0, 0, 0, 0.5),
        offset: Offset(0, 4),
        blurRadius: 8,
      );
}
