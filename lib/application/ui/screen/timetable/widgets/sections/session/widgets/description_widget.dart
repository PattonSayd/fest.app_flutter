part of '../session_widget.dart';

class _DescriptionWidget extends StatelessWidget {
  final SessionConfig config;

  const _DescriptionWidget({Key? key, required this.config}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Text(
        config.sessionTitle,
        style: AppTextStyle.steinbeckNormalText.copyWith(
          color: config._style.sessionTitleColor,
        ),
      ),
    );
  }
}
