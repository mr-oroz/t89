import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t89/core/theme/app_colors.dart';
import 'package:t89/core/theme/app_fonts.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Timer _timer;
  int _dotCount = 0;
  final int _maxDots = 3;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..repeat(reverse: false);

    _timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      setState(() {
        _dotCount = (_dotCount + 1) % (_maxDots + 1);
      });
    });

    Future.delayed(const Duration(seconds: 2)).then(
      // ignore: use_build_context_synchronously
      (value) => Navigator.pushReplacementNamed(context, '/onboarding_screen'),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedBuilder(
                  animation: _controller,
                  builder: (_, __) => Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Loading',
                        style: AppFonts.w600f28.copyWith(
                          color: AppColors.mainColor,
                        ),
                      ),
                      for (int i = 1; i <= _maxDots; i++)
                        Opacity(
                          opacity: i <= _dotCount ? 1.0 : 0.0,
                          child: Text(
                            '.',
                            style: AppFonts.w600f28.copyWith(
                              color: AppColors.mainColor,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            const Gap(50),
          ],
        ),
      ),
    );
  }
}
