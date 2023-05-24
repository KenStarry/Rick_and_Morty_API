import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQlConfig {
  //  rick and morty link
  final HttpLink httpLink = HttpLink("https://rickandmortyapi.com/graphql");

  ValueNotifier<GraphQLClient> client() =>
      ValueNotifier<GraphQLClient>(GraphQLClient(
          link: httpLink,
          cache: GraphQLCache(),
          defaultPolicies: DefaultPolicies())
      );
}
