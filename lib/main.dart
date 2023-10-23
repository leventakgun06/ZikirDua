import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'constants/constants.dart';
import 'home/home_page.dart';

void main() => runApp(ProviderScope(child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: textAppName,
      debugShowCheckedModeBanner: false,
      theme: ThemeClass.lightTheme,
      darkTheme: ThemeClass.darkTheme,
      themeMode: ThemeMode.system,
      home: HomePage(maxSlide: MediaQuery.of(context).size.width * 0.835),
    );
  }
}

