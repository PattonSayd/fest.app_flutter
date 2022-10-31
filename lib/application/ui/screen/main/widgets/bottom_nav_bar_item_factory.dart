part of '../main_screen.dart';

class _BottomNavBarItemFactory {
  final String icon;
  final String tooltip;

  _BottomNavBarItemFactory(this.icon, this.tooltip);

  BottomNavigationBarItem build(
    int index,
    int currentIndex,
    BottomNavigationBarThemeData theme,
  ) {
    final color = index == currentIndex
        ? theme.selectedItemColor
        : theme.unselectedItemColor;

    return BottomNavigationBarItem(
      icon: Image.asset(
        icon,
        color: color,
      ),
      label: '',
      tooltip: tooltip,
    );
  }
}
