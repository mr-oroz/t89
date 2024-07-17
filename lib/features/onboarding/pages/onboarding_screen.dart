import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t89/core/theme/app_colors.dart';
import 'package:t89/core/theme/app_fonts.dart';
import 'package:t89/core/widgets/app_button.dart';
import 'package:t89/features/onboarding/model/onboardig_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _selectedIndex = 0;
  final List<WelcomeTitleModel> titles = [
    WelcomeTitleModel(
      'Welcome to',
      'APP NAME',
      'App Name is your virtual store simulator. Create your company and develop it!',
      'assets/images/welcome1.png',
    ),
    WelcomeTitleModel(
        'Watch',
        'Statistics',
        'Track your product data in real time, sort or view data on all products',
        'assets/images/welcome2.png'),
    WelcomeTitleModel(
        'Collect',
        'Achievements',
        'Collect achievements for completed tasks ',
        'assets/images/welcome3.png'),
  ];

  void _nextPage() {
    if (_selectedIndex < titles.length - 1) {
      setState(() {
        _selectedIndex++;
      });
    } else {
      Navigator.pushReplacementNamed(
        context,
        '/navigation_bottom_bar',
      );
    }
  }

  Widget _buildProgressIndicator() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(titles.length, (index) {
          return Flexible(
            child: Container(
              height: 5,
              margin: const EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                color: _selectedIndex >= index
                    ? AppColors.mainColor
                    : AppColors.darkBlue.withOpacity(0.2),
                borderRadius: BorderRadius.circular(2.5),
              ),
            ),
          );
        }),
      ),
    );
  }

  _buildDescription() {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              titles[_selectedIndex].desc,
              textAlign: TextAlign.center,
              style: AppFonts.w400f16,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    titles[_selectedIndex].title,
                    style: AppFonts.w600f28,
                  ),
                  const Gap(5),
                  Text(
                    titles[_selectedIndex].title2,
                    style:
                        AppFonts.w600f28.copyWith(color: AppColors.mainColor),
                  ),
                ],
              ),
              const Gap(20),
              _buildProgressIndicator(),
              _buildDescription(),
              Expanded(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        titles[_selectedIndex].image,
                        fit: BoxFit.fitHeight,
                        height: 550,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 0,
                      right: 0,
                      child: AppButton(
                        onPressed: _nextPage,
                        title: 'Continue',
                        height: 56,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
