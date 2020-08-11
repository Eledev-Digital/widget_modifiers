part of modifiers;

extension ShapeModifiers<T extends Widget> on T {
  ClipPath clipRect({double borderRadius = 0}) => ClipPath(
        child: this,
        clipBehavior: Clip.antiAlias,
        clipper: RectClipper(borderRadius: borderRadius),
      );

  ClipPath clipCustom({CustomClipper<Path> clipper}) => ClipPath(
        child: this,
        clipBehavior: Clip.antiAlias,
        clipper: clipper,
      );

  ClipPath clipCircle({double radius = 20}) => ClipPath(
        child: this,
        clipBehavior: Clip.antiAlias,
        clipper: CircleClipper(radius: radius),
      );

  ShadowClipper shadowRectClipper({
    @required Shadow shadow,
    double borderRadius = 0,
  }) =>
      ShadowClipper(
        child: this,
        clipper: RectClipper(borderRadius: borderRadius),
        shadow: shadow,
      );

  ShadowClipper shadowCircleClipper({
    @required Shadow shadow,
    double radius = 25,
  }) =>
      ShadowClipper(
        child: this,
        clipper: CircleClipper(radius: radius),
        shadow: shadow,
      );
}
