part of modifiers;

extension GesturetModifiers<T extends Widget> on T {
  GestureDetector onTap([Function function]) => GestureDetector(
        child: this,
        onTap: function,
      );
}
