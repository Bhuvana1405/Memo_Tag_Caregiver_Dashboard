import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() => runApp(const MemoTagApp());

class MemoTagApp extends StatelessWidget {
  const MemoTagApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MemoTag Dashboard',
      theme: ThemeData(primarySwatch: Colors.teal),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const LoginScreen(),
    );
  }
}
