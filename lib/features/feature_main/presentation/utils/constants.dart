import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:rick_morty_api/features/feature_favorite/presentation/favorite_screen.dart';
import 'package:rick_morty_api/features/feature_home/presentation/home_screen.dart';
import 'package:rick_morty_api/features/feature_library/presentation/library_screen.dart';
import 'package:rick_morty_api/features/feature_settings/presentation/settings_screen.dart';

class Constants {

  static const bottomNavTabs = [
    GButton(icon: Icons.home, text: "Home"),
    GButton(icon: Icons.favorite_border, text: "Favourites"),
    GButton(icon: Icons.folder_copy_outlined, text: "Library"),
    GButton(icon: Icons.settings, text: "Settings"),
  ];

  static const screens = [
    HomeScreen(),
    FavoriteScreen(),
    LibraryScreen(),
    SettingsScreen(),
  ];
}