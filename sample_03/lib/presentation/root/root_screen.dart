import 'package:flutter/material.dart';
import 'package:sample_03/ui/color_styles.dart';

class RootScreen extends StatelessWidget {
  final Widget body;
  final int currentPageIndex;
  final ValueChanged<int> onPageChanged;

  const RootScreen({
    required this.body,
    required this.currentPageIndex,
    required this.onPageChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        indicatorColor: Colors.transparent,
        onDestinationSelected: (index) => onPageChanged(index),
        selectedIndex: currentPageIndex,
        destinations: [
          NavigationDestination(
            icon: Icon(
              Icons.home_outlined,
              color: ColorStyles.grey4,
            ),
            selectedIcon: Stack(
              children: [
                Icon(
                  Icons.home,
                  color: ColorStyles.primary40,
                ),
                Icon(
                  Icons.home_outlined,
                  color: ColorStyles.primary100,
                ),
              ],
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.bookmark_border,
              color: ColorStyles.grey4,
            ),
            selectedIcon: Stack(
              children: [
                Icon(
                  Icons.bookmark,
                  color: ColorStyles.primary40,
                ),
                Icon(
                  Icons.bookmark_border,
                  color: ColorStyles.primary100,
                ),
              ],
            ),
            label: 'Bookmark',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.notifications_outlined,
              color: ColorStyles.grey4,
            ),
            selectedIcon: Stack(
              children: [
                Icon(
                  Icons.notifications,
                  color: ColorStyles.primary40,
                ),
                Icon(
                  Icons.notifications_outlined,
                  color: ColorStyles.primary100,
                ),
              ],
            ),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.person_outline,
              color: ColorStyles.grey4,
            ),
            selectedIcon: Stack(
              children: [
                Icon(
                  Icons.person,
                  color: ColorStyles.primary40,
                ),
                Icon(
                  Icons.person_outline,
                  color: ColorStyles.primary100,
                ),
              ],
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
