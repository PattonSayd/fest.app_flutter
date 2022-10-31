part of '../main_screen.dart';

class _BottomNavBarWidget extends StatelessWidget {
  const _BottomNavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read<MainViewModel>();
    final currentIndex =
        context.select((MainViewModel vm) => vm.getCurrentIndex);
    final theme = Theme.of(context).bottomNavigationBarTheme;

    final items = [
      _BottomNavBarItemFactory(AppAssets.tabbarCalendar, 'Calendar'),
      _BottomNavBarItemFactory(AppAssets.tabbarBookmark, 'Bookmark'),
      _BottomNavBarItemFactory(AppAssets.tabbarPoint, 'Point'),
    ]
        .asMap()
        .map((key, obj) {
          return MapEntry(key, obj.build(key, currentIndex, theme));
        })
        .values
        .toList();

    return SizedBox(
      height: 83,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 49),
            child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: model.setCurrentIndex,
              type: BottomNavigationBarType.fixed,
              selectedFontSize: 0,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: items,
            ),
          ),
        ),
      ),
    );
  }
}
