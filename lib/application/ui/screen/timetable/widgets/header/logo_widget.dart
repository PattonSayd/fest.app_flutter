part of '../../timetable_screen.dart';

class _LogoWidget extends StatelessWidget {
  const _LogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 204,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Image.asset(AppAssets.sheduleBg),
            ),
            Positioned(
              left: 20,
              top: 84,
              child: Image.asset(AppAssets.sheduleFfLogo),
            ),
            Positioned(
              right: 20,
              top: 65,
              child: Image.asset(AppAssets.sheduleSurfLogo),
            )
          ],
        ),
      ),
    );
  }
}
