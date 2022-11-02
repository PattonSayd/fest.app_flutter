part of '../session_widget.dart';

class _SpeakerWidget extends StatelessWidget {
  final SessionConfig config;
  const _SpeakerWidget({Key? key, required this.config}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const avatarSize = 24.0;
    return Expanded(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(avatarSize / 2),
            child: Image.network(
              config.avatarUrl,
              height: avatarSize,
              width: avatarSize,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              config.speakerName,
              style: AppTextStyle.bookText
                  .copyWith(color: config._style.speakerNameColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
            ),
          ),
        ],
      ),
    );
  }
}
