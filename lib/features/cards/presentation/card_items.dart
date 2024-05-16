import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lorcana_collection/common_widgets/custom_image.dart';
import 'package:lorcana_collection/constants/app_sizes.dart';
import 'package:lorcana_collection/features/cards/domain/entities/card.dart';
import 'package:lorcana_collection/features/favorites/presentation/favorite_button.dart';
import 'package:lorcana_collection/util/currency_formatter.dart';

/// Used to show a single product inside a card.
class CardItems extends ConsumerWidget {
  const CardItems({required this.card, super.key, this.onPressed});
  final CardEntity card;
  final VoidCallback? onPressed;

  // * Keys for testing using find.byKey()
  static const productCardKey = Key('product-card');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currencyProvider = ref.watch(currencyFormatterProvider);
    return Card(
      child: InkWell(
        key: productCardKey,
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(Sizes.p16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomImage(
                imageUrl: card.imageUrls!.elementAt(1).url,
              ),
              gapH4,
              if (card.prices != null) ...[
                Row(
                  children: [
                    Text(
                      'Price: ',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      currencyProvider.format(card.prices!.de),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
                gapH4,
                Row(
                  children: [
                    Text(
                      'Price 30 days: ',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      currencyProvider.format(card.prices!.prixMoyen30Jours),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
                gapH8,
                FavoriteButton(card: card),
              ] else
                const SizedBox(),
              gapH4,
            ],
          ),
        ),
      ),
    );
  }
}
