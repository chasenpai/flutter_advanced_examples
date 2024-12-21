import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final Widget body;
  final int currentIndex;
  final ValueChanged<int> onSelected;

  const HomeScreen({
    super.key,
    required this.body,
    required this.currentIndex,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          onSelected(index);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.today,
            ),
            label: 'Today',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.bookmark,
            ),
            label: 'Bookmarks',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.people,
            ),
            label: 'Friends',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.radar,
            ),
            label: 'Rador',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
