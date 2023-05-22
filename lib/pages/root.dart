import 'package:flutter/material.dart';

import 'package:ribbon/pages/sign_in_page.dart';
import 'package:ribbon/pages/home_page.dart';

class Ribbon extends StatefulWidget {
  const Ribbon({super.key});

  @override
  State<Ribbon> createState() {
    return _RibbonState();
  }
}

class _RibbonState extends State<Ribbon> {
  late Widget currentPage;

  @override
  void initState() {
    currentPage = SignInPage(goToHome);
    super.initState();
  }

  void goToHome() {
    setState(() {
      currentPage = Home();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ribbon Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 56, 113, 151)),
        useMaterial3: true,
      ),
      home: SafeArea(
        child: currentPage,
      ),
    );
  }
}
