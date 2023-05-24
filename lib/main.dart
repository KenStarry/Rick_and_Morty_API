import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rick_morty_api/core/data/graphql/graphql_config.dart';
import 'package:rick_morty_api/features/feature_main/presentation/main_screen.dart';

void main() => runApp(GraphQLProvider(
      client: GraphQlConfig().client(),
      child: MaterialApp(
        home: MainScreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.orange),
      ),
    ));
