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
    startColor: AppColors.white72,
    endColor: AppColors.white72,
  );

  static const pastStyle = _TimeStyle(
    startColor: AppColors.darkText72,
    endColor: AppColors.darkText72,
  );

  static const currentStyle = _TimeStyle(
    startColor: AppColors.darkText72,
    endColor: AppColors.green72,
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
