import 'package:flutter/material.dart';

class CircleClipper extends CustomClipper<Path> {
  final double radius;

  CircleClipper({this.radius = 20.0});
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    Path path = Path()
      ..addOval(
        Rect.fromCircle(
          center: Offset(width / 2, height / 2),
          radius: radius,
        ),
      )
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
