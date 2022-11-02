part of '../session_widget.dart';

class _BookmarksWidget extends StatelessWidget {
  final SessionConfig config;

  const _BookmarksWidget({Key? key, required this.config}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onPressed: () {},
      icon: Image.asset(
        config._bookmarksStyle.bookmarksButtonIcon,
        color: config._bookmarksStyle.bookmarksButtonColor,
      ),
    );
  }
}
