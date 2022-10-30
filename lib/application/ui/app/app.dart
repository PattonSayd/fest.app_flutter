import 'package:flutter/material.dart';
import 'package:flutter_fest/application/ui/router/app_router.dart';
import 'package:flutter_fest/application/ui/themes/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      routes: AppRoute.routes,
      // onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
