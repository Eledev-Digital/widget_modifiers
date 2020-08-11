import 'package:flutter/material.dart';

class RectClipper extends CustomClipper<Path> {
  final double borderRadius;

  RectClipper({this.borderRadius = 0});
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    Path path = Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(0, 0, width, height),
          Radius.circular(borderRadius),
        ),
      )
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
