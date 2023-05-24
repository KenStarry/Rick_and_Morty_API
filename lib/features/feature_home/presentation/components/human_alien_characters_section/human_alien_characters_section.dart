import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rick_morty_api/features/feature_home/presentation/components/top_characters_card_grid.dart';

import '../../../../../core/domain/models/Character.dart';
import '../top_characters_card.dart';

class HumanAlienCharactersSection extends StatelessWidget {
  final List<Character>? characters;
  final _random = Random();

  HumanAlienCharactersSection({Key? key, required this.characters})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 270,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Aliens",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        "See All",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const Icon(Icons.arrow_right)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Row(
                  children: [
                    characters == null
                        ? Center(child: CircularProgressIndicator())
                        : TopCharactersCard(
                            character: characters![
                                0 + _random.nextInt(characters!.length - 0)]),
                    Expanded(
                        child: characters == null
                            ? Center(child: CircularProgressIndicator())
                            : GridView.builder(
                                scrollDirection: Axis.horizontal,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 16,
                                        mainAxisSpacing: 16),
                                itemCount: characters!.length,
                                itemBuilder: (context, index) {
                                  return TopCharactersCardGrid(
                                      character: characters![index]);
                                },
                              ))
                  ],
                )),
          )
        ],
      ),
    );
  }
}
