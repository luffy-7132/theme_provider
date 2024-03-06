import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_provider/providers/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Switch(
            value: context.watch<ThemeProvider>().themevalue,
            onChanged: (value) {
              log(value.toString());
              context.read<ThemeProvider>().themevalue = value;
            },
          )
        ],
      ),
      body: Center(
        child: Text('This is Theme Example'),
      ),
    );
  }
}
