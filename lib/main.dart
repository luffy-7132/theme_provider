import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_provider/providers/theme_provider.dart';
import 'package:theme_provider/screens/home_screen.dart';
import 'app_theme/app_theme.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    var isDark = context.watch<ThemeProvider>().themevalue;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: isDark ? lightMode : darkMode,
      home: HomeScreen(),
    );
  }
}
