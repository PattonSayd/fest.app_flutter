import 'package:flutter/material.dart';
import 'package:flutter_fest/application/ui/screen/main/viewmodel/main_viewmodel.dart';
import 'package:flutter_fest/application/ui/themes/app_colors.dart';
import 'package:flutter_fest/resources/resources.dart';
import 'package:provider/provider.dart';

import '../timetable/timetable_screen.dart';

part '../main/widgets/bottom_nav_bar_widget.dart';
part '../main/widgets/bottom_nav_bar_item_factory.dart';
part '../main/widgets/body_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _BodyWidget(),
      bottomNavigationBar: _BottomNavBarWidget(),
    );
  }
}
