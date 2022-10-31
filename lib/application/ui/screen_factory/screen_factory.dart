import 'package:flutter/material.dart';
import 'package:flutter_fest/application/ui/screen/main/main_screen.dart';
import 'package:flutter_fest/application/ui/screen/main/viewmodel/main_viewmodel.dart';
import 'package:provider/provider.dart';

class ScreenFactory {
  ScreenFactory._();

  static Widget get mainTabs => ChangeNotifierProvider(
        create: (_) => MainViewModel(),
        child: const MainScreen(),
      );
}
