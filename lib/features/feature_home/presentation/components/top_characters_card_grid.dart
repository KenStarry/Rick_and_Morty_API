import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rick_morty_api/features/feature_home/presentation/components/network_image.dart';

import '../../../../core/domain/models/Character.dart';

class TopCharactersCardGrid extends StatelessWidget {
  final Character character;

  const TopCharactersCardGrid({Key? key, required this.character})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16))
      ),
      child: networkImage(imageUrl: character.image),
    );
  }
}
