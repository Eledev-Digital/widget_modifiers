part of modifiers;

extension WidgetModifiers<T extends Widget> on T {
  Padding padding([EdgeInsets padding]) => Padding(
        child: this,
        padding: padding ?? EdgeInsets.all(8.0),
      );

  SizedBox frame({double height, double width}) => SizedBox(
        child: this,
        height: height,
        width: width,
      );

  AspectRatio aspectRatio([double aspectRatio]) => AspectRatio(
        child: this,
        aspectRatio: aspectRatio ?? 1,
      );

  Theme theme(ThemeData data, bool isMaterial) => Theme(
        child: this,
        data: data,
        isMaterialAppTheme: isMaterial,
      );
  Expanded expanded([int flex]) => Expanded(
        child: this,
        flex: flex,
      );

  Opacity opacity(double opacity) => Opacity(
        child: this,
        opacity: opacity,
      );

  ClipPath cornerRadius(CustomClipper<Path> clipper) => ClipPath(
        child: this,
        clipBehavior: Clip.antiAlias,
        clipper: clipper,
      );
}
