import 'package:rick_morty_api/core/domain/models/Character.dart';

abstract class QueriesRepository {

  Future<List<Character>> getCharacters();
}