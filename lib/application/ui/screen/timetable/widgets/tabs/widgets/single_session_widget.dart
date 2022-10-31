part of '../timetable_tabs_widget.dart';

class _SingleSessionWidget extends TimetableTabsWidget {
  const _SingleSessionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SessionWidget(),
      ],
    );
  }
}
