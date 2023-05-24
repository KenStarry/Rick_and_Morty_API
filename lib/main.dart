import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rick_morty_api/core/data/graphql/graphql_config.dart';
import 'package:rick_morty_api/features/feature_main/presentation/main_screen.dart';
import 'package:rick_morty_api/theme/my_theme.dart';

void main() => runApp(GraphQLProvider(
      client: GraphQlConfig().client(),
      child: MaterialApp(
        home: MainScreen(),
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: MyTheme.lightTheme,
        darkTheme: MyTheme.darkTheme,
      ),
    ));
