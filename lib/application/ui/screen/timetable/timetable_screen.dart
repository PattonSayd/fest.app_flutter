import 'package:flutter/material.dart';
import 'package:flutter_fest/application/ui/themes/app_colors.dart';
import 'package:flutter_fest/resources/resources.dart';

import 'widgets/sections/timetable_tabs_widget.dart';

part 'widgets/header/logo_widget.dart';
part 'widgets/header/chips/chips_delegate.dart';
part 'widgets/header/chips/chips_widget.dart';

class TimetableScreen extends StatelessWidget {
  const TimetableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final safeAreaTop = MediaQuery.of(context).padding.top;

    return SafeArea(
      top: false,
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const _LogoWidget(),
          SliverPersistentHeader(
            pinned: true,
            delegate: _ChipsDelegat(topInset: safeAreaTop),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(((context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 20, right: 20),
                child: TimetableTabsWidget.single(),
              );
            })

                // TimetableTabsWidget.single(),
                // TimetableTabsWidget.single(),
                // TimetableTabsWidget.single(),
                // TimetableTabsWidget.single(),
                // TimetableTabsWidget.single(),
                // TimetableTabsWidget.single(),

                ),
          ),
        ],
      ),
    );
  }
}
