
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t89/core/theme/app_colors.dart';
import 'package:t89/core/theme/app_fonts.dart';
import 'package:t89/features/main/widgets/custom_container_card.dart';
class ProductTotalCard extends StatelessWidget {
  const ProductTotalCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainerCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total Earnings',
            style: AppFonts.w500f15.copyWith(
              color: AppColors.grey,
            ),
          ),
          const Gap(10),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            decoration: BoxDecoration(
                color: AppColors.green.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.green)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$',
                  style: AppFonts.w600f18.copyWith(
                    fontSize: 20,
                    color: AppColors.green,
                  ),
                ),
                Text(
                  '3324.25',
                  style: AppFonts.w600f18.copyWith(
                    fontSize: 20,
                    color: AppColors.green,
                  ),
                )
              ],
            ),
          ),
          const Gap(10),
          Divider(
            color: Colors.black.withOpacity(0.05),
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Best sale:',
                    style: AppFonts.w500f12.copyWith(
                      color: AppColors.grey,
                    ),
                  ),
                  Text(
                    '\$ 312',
                    style: AppFonts.w600f18.copyWith(
                      fontSize: 20,
                      color: AppColors.green,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Products in stock:',
                    style: AppFonts.w500f12.copyWith(
                      color: AppColors.grey,
                    ),
                  ),
                  Text(
                    '5123',
                    style: AppFonts.w600f18.copyWith(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Products sold:',
                    style: AppFonts.w500f12.copyWith(
                      color: AppColors.grey,
                    ),
                  ),
                  Text(
                    '513',
                    style: AppFonts.w600f18.copyWith(
                      fontSize: 20,
                    ),
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