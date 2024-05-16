import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lorcana_collection/features/cards/presentation/controllers/card_list_controller.dart';

class FavoriteIcon extends ConsumerWidget {
  const FavoriteIcon({super.key});

  static const favoriteKey = Key('favorite-icon');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      key: favoriteKey,
      icon: const Icon(Icons.favorite),
      color: ref.watch(cardsSearchIsFavoriteNotifierProvider) ? Colors.red : Colors.white,
      onPressed: () {
        ref.read(cardsSearchIsFavoriteNotifierProvider.notifier).toggleFavorite();
      },
    );
  }
}
