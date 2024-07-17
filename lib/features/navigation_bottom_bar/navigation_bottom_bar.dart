import 'package:flutter/material.dart';
import 'package:t89/core/widgets/wsb_bottom_navigationBarItem.dart';
import 'package:t89/features/achievements/pages/achievements_screen.dart';
import 'package:t89/features/main/pages/main_screen.dart';
import 'package:t89/features/products/pages/products_screen.dart';
import 'package:t89/features/settings/pages/settings_screen.dart';
import 'package:t89/features/statistics/pages/statistics_screen.dart';

class NavigationBottomBar extends StatefulWidget {
  const NavigationBottomBar({super.key});

  @override
  State<NavigationBottomBar> createState() => _NavigationBottomBarState();
}

class _NavigationBottomBarState extends State<NavigationBottomBar> {
  int _selectedIndex = 0;
  final List<Widget> pages = [
    const MainScreen(),
    const ProductsScreen(),
    const StatisticsScreen(),
    const AchievementsScreen(),
    const SettingsScreen(),
  ];

  void _onSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[_selectedIndex],
      ),
      bottomNavigationBar: WSBBottomNavigationBar(
        onSelected: _onSelected,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
