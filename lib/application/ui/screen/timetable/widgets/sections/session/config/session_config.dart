part of '../session_widget.dart';

class _SessionStyle {
  final Color widgetBackground;
  final Color speakerNameColor;
  final Color sessionTitleColor;

  const _SessionStyle({
    required this.widgetBackground,
    required this.speakerNameColor,
    required this.sessionTitleColor,
  });
}

class _SessionBookmarksStyle {
  final Color? bookmarksButtonColor;
  final Color? widgetBackgroundGradient;
  final String bookmarksButtonIcon;

  const _SessionBookmarksStyle({
    required this.bookmarksButtonColor,
    required this.widgetBackgroundGradient,
    required this.bookmarksButtonIcon,
  });
}

class SessionConfig {
  final String avatarUrl;
  final String speakerName;
  final String sessionTitle;
  final bool bookmarks;
  final SessionStatus status;

  const SessionConfig({
    required this.avatarUrl,
    required this.speakerName,
    required this.sessionTitle,
    required this.bookmarks,
    required this.status,
  });

  _SessionStyle get _style {
    switch (status) {
      case SessionStatus.oncoming:
        return oncomingStyle;
      case SessionStatus.current:
        return oncomingStyle;
      case SessionStatus.past:
        return pastStyle;
    }
  }

  _SessionBookmarksStyle get _bookmarksStyle =>
      bookmarks ? isBookmarksStyle : isNotBookmarksStyle;

  static const oncomingStyle = _SessionStyle(
    widgetBackground: AppColors.darkSecondary,
    speakerNameColor: AppColors.darkText,
    sessionTitleColor: AppColors.white,
  );

  static const pastStyle = _SessionStyle(
    widgetBackground: AppColors.transparent,
    speakerNameColor: AppColors.darkText48,
    sessionTitleColor: AppColors.darkText,
  );

  static const isBookmarksStyle = _SessionBookmarksStyle(
    bookmarksButtonColor: AppColors.green,
    widgetBackgroundGradient: AppColors.green,
    bookmarksButtonIcon: AppAssets.bookmarkFull,
  );

  static const isNotBookmarksStyle = _SessionBookmarksStyle(
    bookmarksButtonColor: null,
    widgetBackgroundGradient: null,
    bookmarksButtonIcon: AppAssets.bookmark,
  );
}
