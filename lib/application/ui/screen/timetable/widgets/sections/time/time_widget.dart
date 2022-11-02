import 'package:flutter/material.dart';
import 'package:flutter_fest/application/ui/screen/timetable/widgets/sections/timetable_tabs_widget.dart';
import 'package:flutter_fest/application/ui/themes/app_colors.dart';
import 'package:flutter_fest/application/ui/themes/app_text_style.dart';
part 'widgets/divider.dart';
part 'config/time_config.dart';

enum DividerPosition { top, bottom }

class TimeWidget extends StatelessWidget {
  final TimeConfig config;

  const TimeWidget({super.key, required this.config});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              Text(
                config.startTime,
                style: AppTextStyle.bookText
                    .copyWith(color: config._style.startColor),
                maxLines: 1,
              ),
              const Spacer(),
              Text(
                config.endTime,
                style: AppTextStyle.bookText
                    .copyWith(color: config._style.endColor),
                maxLines: 1,
              )
            ],
          ),
          const SizedBox(width: 9),
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
