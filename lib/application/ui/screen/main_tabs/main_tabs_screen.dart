import 'package:flutter/material.dart';
import 'package:flutter_fest/application/ui/screen/timetable.dart/timetable_screen.dart';
import 'package:flutter_fest/resources/resources.dart';
import 'package:provider/provider.dart';

part 'viewmodel/main_tabs_viewmodel.dart';
part 'widgets/bottom_nav_bar_widget.dart';
part 'widgets/bottom_nav_bar_item_factory.dart';
part 'widgets/body_widget.dart';

class MainTabsScreen extends StatelessWidget {
  const MainTabsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _BodyWidget(),
      bottomNavigationBar: _BottomNavBarWidget(),
    );
  }
}
