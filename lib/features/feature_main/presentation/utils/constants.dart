import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Constants {

  final bottomNavTabs = const [
    GButton(icon: Icons.home, text: "Home"),
    GButton(icon: Icons.search, text: "Search"),
    GButton(icon: Icons.favorite_border, text: "Favourites"),
    GButton(icon: Icons.settings, text: "Settings"),
  ];
}