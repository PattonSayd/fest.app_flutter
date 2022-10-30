part of '../timetable_screen.dart';

class _LogoWidget extends StatelessWidget {
  const _LogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 244,
        child: Stack(
          children: [
            Positioned(
              left: 20,
              top: 40,
              child: Image.asset(AppAssets.sheduleFfLogo),
            ),
            Positioned(
              right: 20,
              top: 20,
              child: Image.asset(AppAssets.sheduleSurfLogo),
            )
          ],
        ),
      ),
    );
  }
}
