import 'package:flutter/material.dart';
import 'package:rick_morty_api/core/data/utils/constants.dart';
import 'package:rick_morty_api/features/feature_home/presentation/components/human_alien_characters_section/human_alien_characters_section.dart';
import 'package:rick_morty_api/features/feature_home/presentation/components/top_characters_section.dart';

import '../../../core/data/repository/queries_repository_impl.dart';
import '../../../core/domain/models/Character.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Character>? _characters, _humanAlienCharacters;
  late QueriesRepositoryImpl repositoryImpl = QueriesRepositoryImpl();

  @override
  void initState() {
    super.initState();
    loadCharacters();
  }

  void loadCharacters() async {
    _characters = null;
    _humanAlienCharacters = null;

    _characters = await repositoryImpl.getCharacters();
    setState(() {});
    _humanAlienCharacters =
        await repositoryImpl.getHumanAlienCharacters(species: Constants.speciesFilters["a"]!);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            TopCharactersSection(characters: _characters),

            HumanAlienCharactersSection(characters: _humanAlienCharacters)
          ],
        ),
      ),
    );
  }
}
