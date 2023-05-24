import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rick_morty_api/core/data/repository/queries_repository_impl.dart';
import 'package:rick_morty_api/features/feature_main/presentation/components/g_bottom_nav.dart';
import 'package:rick_morty_api/features/feature_main/presentation/components/main_appbar.dart';
import 'package:rick_morty_api/features/feature_main/presentation/utils/constants.dart';

import '../../../core/domain/models/Character.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _setIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(context: context, title: "Home"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: IndexedStack(
          index: _setIndex,
          children: Constants.screens,
        ),
      ),
      bottomNavigationBar: gBottomNav(
          context: context,
          onTap: (index) {
            setState(() {
              _setIndex = index;
            });
          }),
    );
  }
}
