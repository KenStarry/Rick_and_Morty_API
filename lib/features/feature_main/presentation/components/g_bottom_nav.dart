import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:rick_morty_api/features/feature_main/presentation/utils/constants.dart';

Widget gBottomNav(
    {required BuildContext context, required Function(int index) onTap}) {
  return GNav(
    tabs: Constants.bottomNavTabs,
    onTabChange: (index) {
      onTap(index);
    },
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
  );
}
