
import 'package:flutter/material.dart';

import 'app.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollbarTheme = ScrollbarThemeData(
      thumbVisibility: MaterialStateProperty.all(true),
    );

    return MaterialApp(
      theme: ThemeData.light().copyWith(scrollbarTheme: scrollbarTheme),
      darkTheme: ThemeData.dark().copyWith(scrollbarTheme: scrollbarTheme),
      title: 'CV',
      home: const MyApp(),
    );
  }
}
