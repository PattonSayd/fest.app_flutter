import 'package:flutter/material.dart';
import 'package:flutter_fest/resources/app_fonts.dart';
import 'package:flutter_fest/resources/resources.dart';

part 'widgets/speaker_widget.dart';
part 'widgets/bookmarks_widget.dart';
part 'widgets/description_widget.dart';

class SessionWidget extends StatelessWidget {
  const SessionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0XFF101115),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        padding: const EdgeInsets.only(left: 16, top: 4, right: 4, bottom: 16),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
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
      ),
    );
  }
}
