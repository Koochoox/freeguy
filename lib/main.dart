import 'package:flutter/material.dart';
import 'core/navigation/app_router.dart';

void main() {
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
