part of '../session_widget.dart';

class _BookmarksWidget extends StatelessWidget {
  const _BookmarksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onPressed: () {},
      icon: Image.asset(AppAssets.bookmark),
    );
  }
}
