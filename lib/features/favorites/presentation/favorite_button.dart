import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lorcana_collection/common_widgets/primary_button.dart';
import 'package:lorcana_collection/features/cards/data/repository/card_repository.dart';
import 'package:lorcana_collection/features/cards/domain/entities/card.dart';
import 'package:lorcana_collection/features/favorites/presentation/favorite_button_controller.dart';

final favoriteCardProvider = StreamProvider.autoDispose.family<bool, CardEntity>((ref, card) {
  return ref.watch(isCardFavoriteProvider(card).future).asStream();
});

class FavoriteButton extends ConsumerWidget {
  const FavoriteButton({required this.card, super.key});
  final CardEntity card;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteCard = ref.watch(favoriteCardProvider(card));

    return favoriteCard.when(
      data: (isFavorite) {
        final state = ref.watch(favoriteButtonControllerProvider);

        return PrimaryButton(
          text: isFavorite ? 'Retirer des favoris' : 'Ajouter au favoris',
          isLoading: state.isLoading,
          onPressed: state.isLoading
              ? null
              : () {
                  ref.read(favoriteButtonControllerProvider.notifier).toggleFavorite(card);
                },
        );
      },
      loading: Container.new,
      error: (_, __) => Container(),
    );
  }
}
