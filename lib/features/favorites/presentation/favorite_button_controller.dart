import 'package:lorcana_collection/features/cards/data/repository/card_repository.dart';
import 'package:lorcana_collection/features/cards/domain/entities/card.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorite_button_controller.g.dart';

@riverpod
class FavoriteButtonController extends _$FavoriteButtonController {
  bool mounted = true;

  @override
  FutureOr<void> build() {
    ref.onDispose(() => mounted = false);
    // nothing to do
  }

  Future<void> toggleFavorite(CardEntity card) async {
    final cardRepository = ref.read(cardRepositoryProvider);
    state = const AsyncValue.loading();
    final newState = await AsyncValue.guard(
      () => cardRepository.toggleCardFavorite(card: card),
    );
    // * Check if the controller is mounted before setting the state to prevent:
    // * Bad state: Tried to use PaymentButtonController after `dispose` was called.
    if (mounted) {
      state = newState;
    }
  }
}
