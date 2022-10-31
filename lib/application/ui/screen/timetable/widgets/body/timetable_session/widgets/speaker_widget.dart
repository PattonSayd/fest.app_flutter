part of '../session_widget.dart';

class _SpeakerWidget extends StatelessWidget {
  const _SpeakerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const avatarSize = 24.0;
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(avatarSize / 2),
          child: Image.network(
            'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
            height: avatarSize,
            width: avatarSize,
          ),
        ),
        const SizedBox(width: 8),
        const Text(
          'Eiusmod enim id duis magna',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: AppFonts.basisGrotesquePro,
            fontWeight: FontWeight.w500,
            height: 1.4285,
          ),
        ),
      ],
    );
  }
}
