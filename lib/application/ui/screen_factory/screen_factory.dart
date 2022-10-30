import 'package:flutter/material.dart';
import 'package:flutter_fest/application/ui/screen/main_tabs/main_tabs_screen.dart';
import 'package:provider/provider.dart';

class ScreenFactory {
  ScreenFactory._();

  static Widget get mainTabs => ChangeNotifierProvider(
        create: (_) => MaintabsViewModel(),
        child: const MainTabsScreen(),
      );
}
