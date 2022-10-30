part of '../timetable_screen.dart';

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double _height = 56;

  @override
  double get minExtent => _height;

  @override
  double get maxExtent => _height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return const _ChipButtonListWidget();
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
