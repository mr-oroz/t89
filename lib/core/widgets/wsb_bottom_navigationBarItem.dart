import 'package:flutter/material.dart';
import 'package:t89/core/theme/app_colors.dart';
import 'package:t89/core/theme/app_fonts.dart';
import 'package:t89/core/widgets/app_icon.dart';

class WSBBottomNavigationBar extends StatelessWidget {
  const WSBBottomNavigationBar({
    super.key,
    required this.onSelected,
    required this.selectedIndex,
  });

  final ValueChanged<int> onSelected;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    final items = [
      WSBBottomNavigationBarItem(
        icon: AppIcons.home,
        text: 'Main',
      ),
      WSBBottomNavigationBarItem(
        icon: AppIcons.bag,
        text: 'Products',
      ),
      WSBBottomNavigationBarItem(
        icon: AppIcons.chart,
        text: 'Statistics',
      ),
      WSBBottomNavigationBarItem(
        icon: AppIcons.ranking,
        text: 'Achievements',
      ),
      WSBBottomNavigationBarItem(
        icon: AppIcons.setting,
        text: 'Settings',
      ),
    ];

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      unselectedLabelStyle: AppFonts.w500f10.copyWith(color: AppColors.darkGrey),
      selectedLabelStyle: AppFonts.w500f10.copyWith(color: AppColors.mainColor),
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.mainColor,
      currentIndex: selectedIndex,
      onTap: onSelected,
      items: List.generate(
        items.length,
        (index) {
          final item = items[index];
          return BottomNavigationBarItem(
            icon: Center(
              child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: AppIcon(item.icon)),
            ),
            activeIcon: Center(
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: AppColors.mainColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: AppIcon(
                  item.icon,
                  color: AppColors.mainColor,
                ),
              ),
            ),
            label: item.text,
          );
        },
      ),
    );
  }
}

class WSBBottomNavigationBarItem {
  final AppIcons icon;
  final String text;

  WSBBottomNavigationBarItem({
    required this.icon,
    required this.text,
  });
}
