part of modifiers;

extension PositionModifiers<T extends Widget> on T {
  Align align([AlignmentGeometry alignment]) => Align(
        child: this,
        alignment: alignment ?? Alignment.center,
      );

  Center center({double widthFactor, double heightFactor}) => Center(
        child: this,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
      );
  
  Positioned position({double top, double bottom, double left, double right}) =>
      Positioned(
        child: this,
        top: top,
        bottom: bottom,
        left: left,
        right: right,
      );
}
