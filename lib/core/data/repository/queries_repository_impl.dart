import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rick_morty_api/core/data/graphql/graphql_config.dart';
import 'package:rick_morty_api/core/data/utils/constants.dart';
import 'package:rick_morty_api/core/data/utils/queries.dart';
import 'package:rick_morty_api/core/domain/models/Character.dart';
import 'package:rick_morty_api/core/domain/repository/queries_repository.dart';

class QueriesRepositoryImpl implements QueriesRepository {
  ValueNotifier<GraphQLClient> client = GraphQlConfig().client();

  @override
  Future<List<Character>> getCharacters() async {
    try {
      QueryResult result = await client.value.query(QueryOptions(
          document: gql(Queries.getCharactersQuery()),
          fetchPolicy: FetchPolicy.networkOnly));

      if (result.hasException) {
        throw Exception(result.exception);
      }

      List? characters =
          result.data![Constants.charactersField][Constants.resultsField];

      if (characters == null || characters.isEmpty) {
        return [];
      }

      List<Character> charactersModelList = characters
          .map((character) => Character.characterFromMap(map: character))
          .toList();

      return charactersModelList;
    } catch (error) {
      throw Exception(error);
    }
  }

  @override
  Future<List<Character>> getHumanAlienCharacters(
      {required String species}) async {
    try {
      QueryResult result = await client.value.query(QueryOptions(
          document: gql(Queries.getHumanAlienCharacters()),
          fetchPolicy: FetchPolicy.networkOnly,
          variables: <String, dynamic>{"species": species}));

      if (result.hasException) {
        throw Exception(result.exception);
      }

      List? characters =
          result.data?[Constants.charactersField][Constants.resultsField];

      if (characters == null || characters.isEmpty) {
        return [];
      }

      //  convert the list to Character model
      List<Character> characterModelList = characters
          .map((character) => Character.characterFromMap(map: character))
          .toList();

      return characterModelList;
    } catch (error) {
      throw Exception(error);
    }
  }
}
