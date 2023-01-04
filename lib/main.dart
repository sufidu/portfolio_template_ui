import 'package:flutter/material.dart';
import 'package:portfolio_template_ui/constants/colors.dart';
import 'package:portfolio_template_ui/screens/home/home_screen.dart';

void main() {
  runApp(const PortfolioTemplate());
}

class PortfolioTemplate extends StatelessWidget {
  const PortfolioTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Portfolio Template",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: AppColor().primaryColor
      ),
      home: const HomeScreen(),
    );
  }
}

