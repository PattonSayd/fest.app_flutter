part of '../timetable_tabs_widget.dart';

class _SingleSessionWidget extends TimetableTabsWidget {
  const _SingleSessionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const config = SessionConfig(
      avatarUrl:
          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      speakerName: 'Benedikt Spinoza',
      sessionTitle: 'Eiusmod enim id duis magna',
      bookmarks: false,
      status: SessionStatus.past,
    );
    return Row(
      children: const [
        SessionWidget(config: config),
      ],
    );
  }
}
