import 'package:flutter/material.dart';
import 'package:flutter_fest/application/ui/screen/timetable/widgets/tabs/session/session_widget.dart';

part 'widgets/single_session_widget.dart';
part 'widgets/multi_session_widget.dart';

abstract class TimetableTabsWidget extends StatelessWidget {
  const TimetableTabsWidget({Key? key}) : super(key: key);

  factory TimetableTabsWidget.single() => const _SingleSessionWidget();
  factory TimetableTabsWidget.multi() => const _MultiSessionWidget();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
