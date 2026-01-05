import 'package:flutter/material.dart';
import 'modules/dashboard/dashboard.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const FreeguyApp());
}

///
/// Freeguy LIFE_OS
/// System Entry Point
///
class FreeguyApp extends StatelessWidget {
  const FreeguyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Freeguy',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: const Dashboard(),
    );
  }
}
