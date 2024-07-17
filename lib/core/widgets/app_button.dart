import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t89/core/theme/app_colors.dart';
import 'package:t89/core/theme/app_fonts.dart';
import 'package:t89/core/widgets/app_icon.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.height,
    this.icon,
  });

  final Function() onPressed;
  final String title;
  final double height;
  final AppIcons? icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          backgroundColor: AppColors.darkBlue,
        ),
        child: icon != null
            ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppIcon(icon!),
                  Gap(10),
                  Text(
                    title,
                    style: AppFonts.w600f18.copyWith(color: AppColors.white),
                  ),
                ],
              )
            : Text(
                title,
                style: AppFonts.w600f18.copyWith(color: AppColors.white),
              ),
      ),
    );
  }
}
