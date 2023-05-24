import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rick_morty_api/core/data/repository/queries_repository_impl.dart';
import 'package:rick_morty_api/features/feature_main/presentation/components/main_appbar.dart';
import 'package:rick_morty_api/features/feature_main/presentation/utils/constants.dart';

import '../../../core/domain/models/Character.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<Character>? _characters;
  late QueriesRepositoryImpl repositoryImpl = QueriesRepositoryImpl();

  @override
  void initState() {
    super.initState();
    loadCharacters();
  }

  void loadCharacters() async {
    _characters = null;
    _characters = await repositoryImpl.getCharacters();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(context: context, title: "Home"),
      body: SafeArea(
        child: _characters == null
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: _characters!.length,
                itemBuilder: (context, index) {
                  return Text(_characters![index].name);
                }),
      ),
      bottomNavigationBar: GNav(
        tabs: Constants().bottomNavTabs,
        onTabChange: (index) {},
      ),
    );
  }
}
