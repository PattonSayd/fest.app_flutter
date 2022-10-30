import 'package:flutter/material.dart';
import 'package:flutter_fest/resources/resources.dart';

part 'widgets/logo_widget.dart';
part 'widgets/sliver_app_bar_delegate.dart';
part 'widgets/chip_button_list_widget.dart';

class TimetableScreen extends StatelessWidget {
  const TimetableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppAssets.sheduleBg),
            fit: BoxFit.none,
            alignment: Alignment.topLeft),
      ),
      child: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const _LogoWidget(),
            SliverPersistentHeader(
              pinned: true,
              delegate: _SliverAppBarDelegate(),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(color: Colors.amber, height: 150),
                  Container(color: Colors.lime, height: 150),
                  Container(color: Colors.blue, height: 150),
                  Container(color: Colors.yellow, height: 150),
                  Container(color: Colors.redAccent, height: 150),
                  Container(color: Colors.lightBlue, height: 150),
                  Container(color: Colors.blueGrey, height: 150),
                  Container(color: Colors.brown, height: 150),
                  Container(color: Colors.amber, height: 150),
                  Container(color: Colors.purple, height: 150),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
