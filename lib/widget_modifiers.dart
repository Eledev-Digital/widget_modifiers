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

  Theme theme(ThemeData data, {bool isMaterial = true}) => Theme(
        child: this,
        data: data,
        isMaterialAppTheme: isMaterial,
      );

  DefaultTextStyle font({
    double size,
    FontWeight weight,
    Color color,
    String family,
    FontStyle fontStyle,
  }) =>
      DefaultTextStyle(
        child: this,
        style: TextStyle(
          color: color,
          fontWeight: weight,
          fontSize: size,
          fontFamily: family,
          fontStyle: fontStyle,
        ),
      );

  Expanded expanded([int flex]) => Expanded(
        child: this,
        flex: flex,
      );

  Opacity opacity(double opacity) => Opacity(
        child: this,
        opacity: opacity,
      );

  DecoratedBox background(Color color) => DecoratedBox(
        child: this,
        decoration: BoxDecoration(color: color),
      );
}
