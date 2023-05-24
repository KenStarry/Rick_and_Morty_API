import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:rick_morty_api/features/feature_main/presentation/utils/constants.dart';

Widget gBottomNav(
    {required BuildContext context, required Function(int index) onTap}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: GNav(
      tabs: Constants.bottomNavTabs,
      onTabChange: (index) {
        onTap(index);
      },
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      rippleColor: Theme.of(context).primaryColor,
      tabBackgroundColor: Theme.of(context).primaryColor,
      padding: const EdgeInsets.all(16),
      gap: 8,
    ),
  );
}
