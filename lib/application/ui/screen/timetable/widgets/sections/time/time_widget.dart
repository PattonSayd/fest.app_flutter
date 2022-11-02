import 'package:flutter/material.dart';
import 'package:flutter_fest/application/ui/screen/timetable/widgets/sections/timetable_tabs_widget.dart';
import 'package:flutter_fest/resources/app_fonts.dart';
part 'widgets/divider.dart';
part 'config/time_config.dart';

enum DividerPosition { top, bottom }

class TimeWidget extends StatelessWidget {
  final TimeConfig config;

  const TimeWidget({super.key, required this.config});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 12,
      fontFamily: AppFonts.basisGrotesquePro,
      fontWeight: FontWeight.w500,
      height: 1.33,
    );
    return SizedBox(
      width: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              Text(
                config.startTime,
                style: textStyle.copyWith(color: config._style.startColor),
                maxLines: 1,
              ),
              const Spacer(),
              Text(
                config.endTime,
                style: textStyle.copyWith(color: config._style.endColor),
                maxLines: 1,
              )
            ],
          ),
          const SizedBox(width: 12),
          Column(
            children: [
              Expanded(
                child: _DividerWidget(
                  color: config._style.startColor,
                  position: DividerPosition.top,
                ),
              ),
              Expanded(
                child: _DividerWidget(
                  color: config._style.endColor,
                  position: DividerPosition.bottom,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
