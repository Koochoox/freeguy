import 'package:flutter/material.dart';
import 'core/navigation/app_router.dart';
import 'core/system/launch_freeze.dart';

void main() {
  LaunchFreeze.lock();
  runApp(const FreeguyApp());
}
class FreeguyApp extends StatelessWidget {
  const FreeguyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generate,
      initialRoute: AppRouter.dashboard,
    );
  }
}
