// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../session_widget.dart';

enum SessionStatus { oncoming, current, past }

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
    widgetBackground: Color(0xFF101115),
    speakerNameColor: Color(0xFF52525E),
    sessionTitleColor: Colors.white,
  );

  static const pastStyle = _SessionStyle(
    widgetBackground: Colors.transparent,
    speakerNameColor: Color(0x7A52525E),
    sessionTitleColor: Color(0xFF52525E),
  );

  static const isBookmarksStyle = _SessionBookmarksStyle(
    bookmarksButtonColor: Color(0xFF00BD13),
    widgetBackgroundGradient: Color(0xFF00BD13),
    bookmarksButtonIcon: AppAssets.bookmarkFull,
  );

  static const isNotBookmarksStyle = _SessionBookmarksStyle(
    bookmarksButtonColor: null,
    widgetBackgroundGradient: null,
    bookmarksButtonIcon: AppAssets.bookmark,
  );
}
