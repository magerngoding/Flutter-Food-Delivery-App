import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/home/pages/get_started_page.dart';
import 'package:food_delivery_app/presentation/home/pages/home_page.dart';
import 'package:food_delivery_app/shared/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
