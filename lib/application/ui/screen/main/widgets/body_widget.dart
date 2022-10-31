part of '../main_screen.dart';

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final index = context.select((MainViewModel vm) => vm.getCurrentIndex);
    return IndexedStack(
      index: index,
      children: [
        const TimetableScreen(),
        Center(
          child: Text(
            index.toString(),
            style: const TextStyle(color: Colors.white),
          ),
        ),
        Center(
          child: Text(
            index.toString(),
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
