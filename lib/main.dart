import 'package:flutter/material.dart';
import 'core/router/app_router.dart';

void main() {
  runApp(const FreeguyApp());
}

class FreeguyApp extends StatelessWidget {
  const FreeguyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Freeguy',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.dashboard,
      onGenerateRoute: AppRouter.generate,
    );
  }
}
