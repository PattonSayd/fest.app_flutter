import 'package:flutter/material.dart';
import 'package:flutter_fest/application/ui/screen/timetable/widgets/sections/session/session_widget.dart';
import 'package:flutter_fest/application/ui/screen/timetable/widgets/sections/time/time_widget.dart';

part 'tabs/single_tabs_widget.dart';
part 'tabs/multi_tabs_widget.dart';

abstract class TimetableTabsWidget extends StatelessWidget {
  const TimetableTabsWidget({Key? key}) : super(key: key);

  factory TimetableTabsWidget.single() => const _SingleTabsWidget();
  factory TimetableTabsWidget.multi() => const _MultiTabsWidget();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
