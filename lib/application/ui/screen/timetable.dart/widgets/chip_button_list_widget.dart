part of '../timetable_screen.dart';

class _ChipButtonListWidget extends StatelessWidget {
  const _ChipButtonListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      scrollDirection: Axis.horizontal,
      itemCount: 20,
      itemBuilder: (context, index) {
        return ElevatedButton(
          onPressed: () {},
          child: Text('Section $index'),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(width: 10),
    );
  }
}
