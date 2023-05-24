import 'package:rick_morty_api/core/domain/models/Character.dart';

abstract class QueriesRepository {
  Future<List<Character>> getCharacters();

  Future<List<Character>> getHumanAlienCharacters({required String species});
}
