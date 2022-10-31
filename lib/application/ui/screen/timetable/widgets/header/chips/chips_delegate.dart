part of '../../../timetable_screen.dart';

class _ChipsDelegat extends SliverPersistentHeaderDelegate {
  final double _height = 56;
  final double topInset;

  const _ChipsDelegat({required this.topInset});

  @override
  double get minExtent => _height + topInset;

  @override
  double get maxExtent => _height + topInset;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return _ChipsWidget(
      topInset: topInset,
    );
  }

  @override
  bool shouldRebuild(_ChipsDelegat oldDelegate) {
    return false;
  }
}
