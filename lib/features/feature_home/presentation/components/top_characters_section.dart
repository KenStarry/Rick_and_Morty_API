import 'package:flutter/material.dart';
import 'package:rick_morty_api/features/feature_home/presentation/components/top_characters_card.dart';

import '../../../../core/domain/models/Character.dart';

class TopCharactersSection extends StatelessWidget {
  final List<Character>? characters;

  const TopCharactersSection({Key? key, required this.characters})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                "Top Characters",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),

          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: characters == null
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: characters!.length,
                      itemBuilder: (context, index) {
                        //  return the card
                        return TopCharactersCard(character: characters![index]);
                      }),
            ),
          )
        ],
      ),
    );
  }
}
