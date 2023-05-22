import 'package:flutter/material.dart';

import 'package:ribbon/pages/root.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ribbon Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 56, 113, 151)),
        useMaterial3: true,
      ),
      home: const SafeArea(
        child: Ribbon(),
      ),
    );
  }
}
