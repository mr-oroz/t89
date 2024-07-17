
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t89/core/theme/app_fonts.dart';
import 'package:t89/core/widgets/app_icon.dart';
import 'package:t89/features/main/widgets/custom_container_card.dart';

class AchievementCard extends StatelessWidget {
  const AchievementCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainerCard(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          AppIcon(AppIcons.star),
          Gap(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rookie:',
                style: AppFonts.w500f16,
              ),
              Row(
                children: [
                  Text('•'),
                  Gap(5),
                  Text(
                    'Sell your first item (0/1)',
                    style: AppFonts.w500f14,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


