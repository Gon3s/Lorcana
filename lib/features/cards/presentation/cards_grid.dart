import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lorcana_collection/common_widgets/async_value_widget.dart';
import 'package:lorcana_collection/constants/app_sizes.dart';
import 'package:lorcana_collection/features/cards/domain/entities/card.dart';
import 'package:lorcana_collection/features/cards/presentation/card_items.dart';
import 'package:lorcana_collection/features/cards/presentation/controllers/card_list_controller.dart';
import 'package:lorcana_collection/l10n/string_hardcoded.dart';
import 'package:url_launcher/url_launcher.dart';

class CardsGrid extends ConsumerWidget {
  const CardsGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final search = ref.watch(cardsSearchQueryNotifierProvider);
    final sort = ref.watch(cardsSearchOrderNotifierProvider);
    final chapter = ref.watch(cardsSearchChapterNotifierProvider);
    final isFavorite = ref.watch(cardsSearchIsFavoriteNotifierProvider);
    final cardQueryData = (
      search: search,
      sort: sort,
      chapter: chapter,
      isFavorite: isFavorite,
    );

    final cards = ref.watch(cardsResultsProvider(cardQueryData));
    return AsyncValueWidget<List<CardEntity>>(
      value: cards,
      data: (cards) => cards.isEmpty
          ? Center(
              child: Text('No cards found'.hardcoded),
            )
          : CardsLayoutGrid(
              itemCount: cards.length,
              itemBuilder: (_, index) {
                final card = cards[index];
                return CardItems(
                  card: card,
                  onPressed: () async => launchUrl(Uri.parse(card.cardUrl)),
                );
              },
            ),
    );
  }
}

/// Grid widget with content-sized items.
/// See: https://codewithandrea.com/articles/flutter-layout-grid-content-sized-items/
class CardsLayoutGrid extends StatelessWidget {
  const CardsLayoutGrid({
    required this.itemCount,
    required this.itemBuilder,
    super.key,
  });

  /// Total number of items to display.
  final int itemCount;

  /// Function used to build a widget for a given index in the grid.
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    // use a LayoutBuilder to determine the crossAxisCount
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        // 1 column for width < 500px
        // then add one more column for each 250px
        final crossAxisCount = max(1, width ~/ 250);
        // once the crossAxisCount is known, calculate the column and row sizes
        // set some flexible track sizes based on the crossAxisCount with 1.fr
        final columnSizes = List.generate(crossAxisCount, (_) => 1.fr);
        final numRows = (itemCount / crossAxisCount).ceil();
        // set all the row sizes to auto (self-sizing height)
        final rowSizes = List.generate(numRows, (_) => auto);
        // Custom layout grid. See: https://pub.dev/packages/flutter_layout_grid
        return LayoutGrid(
          columnSizes: columnSizes,
          rowSizes: rowSizes,
          rowGap: Sizes.p24, // equivalent to mainAxisSpacing
          columnGap: Sizes.p24, // equivalent to crossAxisSpacing
          children: [
            // render all the items with automatic child placement
            for (var i = 0; i < itemCount; i++) itemBuilder(context, i),
          ],
        );
      },
    );
  }
}
