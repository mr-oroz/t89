import 'package:flutter/material.dart';
import 'package:t89/core/theme/app_colors.dart';
import 'package:t89/core/theme/app_fonts.dart';
import 'package:t89/features/navigation_bottom_bar/navigation_bottom_bar.dart';
import 'package:t89/features/onboarding/pages/onboarding_screen.dart';
import 'package:t89/features/splash/splash_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.white,
          elevation: 0,
          centerTitle: false,
          titleTextStyle: AppFonts.w600f22.copyWith(
            color: AppColors.mainColor,
          ),
        ),
      ),
      home: const SplashScreen(),
      routes: {
        '/onboarding_screen': (context) => const OnboardingScreen(),
        '/navigation_bottom_bar': (context) => const NavigationBottomBar(),
      },
    );
  }
}
