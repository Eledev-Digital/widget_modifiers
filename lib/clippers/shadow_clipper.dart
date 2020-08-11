import 'package:flutter/material.dart';

@immutable
class ShadowClipper extends StatelessWidget {
  final Shadow shadow;
  final CustomClipper clipper;
  final Widget child;

  ShadowClipper({
    this.shadow,
    @required this.clipper,
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      key: UniqueKey(),
      child: ClipPath(child: child, clipper: this.clipper),
      painter: shadow != null
          ? _ShadowPainter(clipper: this.clipper, shadow: this.shadow)
          : null,
    );
  }
}

class _ShadowPainter extends CustomPainter {
  final Shadow shadow;
  final CustomClipper clipper;

  _ShadowPainter({@required this.shadow, this.clipper});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = shadow.toPaint();
    var clipPath = clipper.getClip(size).shift(shadow.offset);

   
    canvas.drawPath(clipPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
