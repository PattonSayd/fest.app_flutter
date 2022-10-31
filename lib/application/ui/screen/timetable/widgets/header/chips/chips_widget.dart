part of '../../../timetable_screen.dart';

class _ChipsWidget extends StatelessWidget {
  final double topInset;
  const _ChipsWidget({Key? key, required this.topInset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const items = 4;
    const itemWidth = 2;
    const halfItemWidth = itemWidth / 2;
    const endPoint = items * itemWidth + halfItemWidth;

    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 20, right: 20, top: topInset),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          final begin = halfItemWidth + index * itemWidth;
          final end = endPoint - begin;

          return Center(
            child: SizedBox(
              height: 36,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(18)),
                    gradient: LinearGradient(
                      begin: Alignment(-begin, 0.0),
                      end: Alignment(end, 0.0),
                      colors: const [
                        Color(0XFF00BD13),
                        Color(0XFF170AF4),
                      ],
                    )),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    minimumSize: Size.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  child: Text('Section $index'),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 10),
      ),
    );
  }
}
