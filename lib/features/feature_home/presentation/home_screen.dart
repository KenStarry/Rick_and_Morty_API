import 'package:flutter/material.dart';

import '../../../core/data/repository/queries_repository_impl.dart';
import '../../../core/domain/models/Character.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
    return SafeArea(
      child: _characters == null
          ? CircularProgressIndicator()
          : ListView.builder(
          itemCount: _characters!.length,
          itemBuilder: (context, index) {
            return Text(_characters![index].name);
          }),
    );
  }
}
