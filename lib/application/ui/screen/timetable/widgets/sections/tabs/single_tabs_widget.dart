part of '../timetable_tabs_widget.dart';

enum SessionStatus {
  oncoming,
  current,
  past,
}

class _SingleTabsWidget extends TimetableTabsWidget {
  const _SingleTabsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const status = SessionStatus.current;
    const config = SessionConfig(
      avatarUrl:
          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      speakerName: 'Benedikt Spinoza',
      sessionTitle: 'Eiusmod enim id duis magna',
      bookmarks: false,
      status: status,
    );

    const timeConfig = TimeConfig(
      startTime: '8:00',
      endTime: '10:30',
      status: status,
    );
    return IntrinsicHeight(
      child: Row(
        children: const [
          TimeWidget(config: timeConfig),
          SizedBox(width: 12),
          SessionWidget(config: config),
        ],
      ),
    );
  }
}
