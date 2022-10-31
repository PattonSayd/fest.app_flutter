import 'package:flutter/material.dart';
import 'package:flutter_fest/resources/app_fonts.dart';

part 'widgets/speaker_widget.dart';
part 'widgets/bookmarks_widget.dart';
part 'widgets/description_widget.dart';

class SessionWidget extends StatelessWidget {
  const SessionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0XFF101115),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: const [
              _SpeakerWidget(),
              _BookmarksWidget(),
            ],
          ),
          const _DescriptionWidget(),
        ],
      ),
    );
  }
}
