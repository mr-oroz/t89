import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t89/core/theme/app_colors.dart';
import 'package:t89/core/theme/app_fonts.dart';

class GlAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GlAppBar({
    super.key,
    this.title,
    this.leading,
    this.opacity,
  });

  final String? title;
  final Widget? leading;
  final double? opacity;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white.withOpacity(opacity ?? 1),
      padding: const EdgeInsets.symmetric(horizontal: 15)
          .copyWith(top: MediaQuery.of(context).padding.top, bottom: 5),
      child: Row(
        children: [
          leading!,
          const Gap(10),
          Text(
            '$title'.toUpperCase(),
            style: AppFonts.w600f22.copyWith(
              color: AppColors.mainColor,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
