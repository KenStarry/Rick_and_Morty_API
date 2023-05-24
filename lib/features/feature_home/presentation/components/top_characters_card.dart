import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rick_morty_api/features/feature_home/presentation/components/network_image.dart';

import '../../../../core/domain/models/Character.dart';

class TopCharactersCard extends StatelessWidget {
  final Character character;

  const TopCharactersCard({Key? key, required this.character})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 16),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16))
      ),
      child: Stack(
        children: [
          networkImage(imageUrl: character.image),

          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(16)),
              child: Text(
                character.name,
                style: TextStyle(
                    fontWeight:
                        Theme.of(context).textTheme.bodyMedium?.fontWeight,
                    color: Colors.white,
                    fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize,
                    fontFamily:
                        Theme.of(context).textTheme.bodyMedium?.fontFamily),
              ),
            ),
          )
        ],
      ),
    );
  }
}
