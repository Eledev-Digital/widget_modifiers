part of modifiers;

extension TransformatonModifiers<T extends Widget> on T {
  /// angle in degrees
  Transform rotate(double angle) => Transform.rotate(
        child: this,
        angle: angle * pi / 180,
      );

  Transform translate({Offset offset, bool transformHitTests = true}) =>
      Transform.translate(
        child: this,
        offset: offset,
        transformHitTests: transformHitTests,
      );

  Transform scale({
    double scale,
    Offset origin,
    AlignmentGeometry alignment = Alignment.center,
    bool transformHitTests = true,
  }) =>
      Transform.scale(
        child: this,
        scale: scale,
        origin: origin,
        transformHitTests: transformHitTests,
      );
}
