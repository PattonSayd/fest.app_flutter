part of '../time_widget.dart';

class TimeConfig {
  final String startTime;
  final String endTime;
  final SessionStatus status;

  _TimeStyle get _style {
    switch (status) {
      case SessionStatus.oncoming:
        return oncomingStyle;
      case SessionStatus.current:
        return currentStyle;
      case SessionStatus.past:
        return pastStyle;
    }
  }

  const TimeConfig({
    required this.startTime,
    required this.endTime,
    required this.status,
  });

  static const oncomingStyle = _TimeStyle(
    startColor: Color(0xB7FFFFFF),
    endColor: Color(0xB7FFFFFF),
  );

  static const pastStyle = _TimeStyle(
    startColor: Color(0xB752525E),
    endColor: Color(0xB752525E),
  );

  static const currentStyle = _TimeStyle(
    startColor: Color(0xB752525E),
    endColor: Color(0xB700BD13),
  );
}

class _TimeStyle {
  final Color startColor;
  final Color endColor;

  const _TimeStyle({
    required this.startColor,
    required this.endColor,
  });
}
