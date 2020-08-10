import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:widget_modifiers/modifiers.dart';

void main() {
  var baseWidget = Text("Hello World");

  group('WidgetModifiersTest -', () {
    test('Padding Modifier', () {
      final widget = baseWidget.padding();
      expect(widget is Padding, true);
    });

    test('Frame Modifier', () {
      final widget = baseWidget.frame();
      expect(widget is SizedBox, true);
    });

    test('On Tap Modifier', () {
      final widget = baseWidget.onTap(() => print("Hello World"));
      expect(widget is GestureDetector, true);
    });

    test('Align Modifier', () {
      final widget = baseWidget.align(Alignment.topLeft);
      expect(widget is Align, true);
    });

    test('Aspect Ratio Modifier', () {
      final widget = baseWidget.aspectRatio(3 / 4);
      expect(widget is AspectRatio, true);
    });

      test('Opacity Modifier', () {
      final widget = baseWidget.opacity(0.5);
      expect(widget is Opacity, true);
    });

      test('Expanded Modifier', () {
      final widget = baseWidget.expanded();
      expect(widget is Expanded, true);
    });

      test('Center Modifier', () {
      final widget = baseWidget.center();
      expect(widget is Center, true);
    });

     test('Theme Modifier', () {
      final widget = baseWidget.theme(ThemeData(), true);
      expect(widget is Theme, true);
    });
  });
}
