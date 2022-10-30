part of '../main_tabs_screen.dart';

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final index = context.select((MaintabsViewModel vm) => vm.getCurrentIndex);
    return IndexedStack(
      index: index,
      children: const [
        TimetableScreen(),
      ],
    );
  }
}
