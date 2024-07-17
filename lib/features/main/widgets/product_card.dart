
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t89/core/theme/app_colors.dart';
import 'package:t89/core/theme/app_fonts.dart';
import 'package:t89/core/widgets/app_icon.dart';
import 'package:t89/features/main/widgets/custom_container_card.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainerCard(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Most Profitable Product',
                style: AppFonts.w500f14.copyWith(
                  color: AppColors.darkBlue.withOpacity(0.4),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const AppIcon(AppIcons.arrow_up),
              )
            ],
          ),
          const Text(
            'Logitech G Pro X Superlight Wireless Gaming Mouse',
            style: AppFonts.w600f16,
          ),
          const Gap(10),
          Row(
            children: [
              Text(
                'Total profit:',
                style: AppFonts.w500f14.copyWith(color: AppColors.grey),
              ),
              const Gap(10),
              Text(
                '\$ 3324.25',
                style: AppFonts.w500f14.copyWith(
                  color: AppColors.green,
                ),
              )
            ],
          ),
          const Gap(10),
          Row(
            children: [
              Text(
                'Sold:',
                style: AppFonts.w500f14.copyWith(color: AppColors.grey),
              ),
              const Gap(10),
              const Text(
                '3324',
                style: AppFonts.w500f14,
              )
            ],
          ),
          Image.asset(
            'assets/images/phone.png',
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
