import 'package:flutter/material.dart';
import 'package:flutter_fest/application/ui/screen/timetable/widgets/sections/timetable_tabs_widget.dart';
import 'package:flutter_fest/resources/app_fonts.dart';
import 'package:flutter_fest/resources/resources.dart';

part 'widgets/speaker_widget.dart';
part 'widgets/bookmarks_widget.dart';
part 'widgets/description_widget.dart';
part 'config/session_config.dart';

class SessionWidget extends StatelessWidget {
  final SessionConfig config;
  const SessionWidget({Key? key, required this.config}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: config._style.widgetBackground,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        padding: const EdgeInsets.only(left: 16, top: 4, right: 4, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                _SpeakerWidget(config: config),
                _BookmarksWidget(config: config),
              ],
            ),
            _DescriptionWidget(config: config),
          ],
        ),
      ),
    );
  }
}
