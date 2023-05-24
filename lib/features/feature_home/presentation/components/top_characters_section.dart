import 'package:flutter/material.dart';

import '../../../../core/domain/models/Character.dart';

class TopCharactersSection extends StatelessWidget {
  final List<Character>? characters;

  const TopCharactersSection({Key? key, required this.characters})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
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
              padding: const EdgeInsets.all(16),
              color: Colors.greenAccent,
              child: characters == null
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: characters!.length,
                      itemBuilder: (context, index) {
                        //  return the card
                        return Text(characters![index].name);
                      }),
            ),
          )
        ],
      ),
    );
  }
}
