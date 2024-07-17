import 'package:flutter/material.dart';
import 'package:t89/core/theme/app_colors.dart';

class CustomContainerCard extends StatelessWidget {
  const CustomContainerCard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
