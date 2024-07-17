import 'package:flutter/material.dart';
import 'package:t89/core/theme/app_colors.dart';
import 'package:t89/core/widgets/app_icon.dart';
import 'package:t89/core/widgets/gl_app_bar.dart';
import 'package:t89/features/achievements/widgets/achievement_card.dart';

class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlAppBar(
        opacity: 0.75,
        leading: Center(
          child: AppIcon(
            AppIcons.ranking,
            color: AppColors.mainColor,
          ),
        ),
        title: 'Achievements',
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ).copyWith(top: 15),
          children: List.generate(
            10,
            (index) {
              return Container(
                margin: EdgeInsets.only(bottom: 10),
                child: AchievementCard(),
              );
            },
          ),
        ),
      ),
    );
  }
}
