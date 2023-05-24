import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget networkImage({required String imageUrl}) => ClipRRect(
  borderRadius: BorderRadius.circular(16),
  child: CachedNetworkImage(
      imageUrl: imageUrl,
      placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity
  ),
);
