import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_bazaar/features/authentication/screens/login/login_screen.dart';
import 'package:smart_bazaar/features/authentication/screens/onboarding_screens/on_boarding.dart';


import 'utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Smart Bazaar',
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const OnBoardingScreen(),
    );
  }
}

