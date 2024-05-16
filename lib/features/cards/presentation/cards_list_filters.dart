import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lorcana_collection/features/cards/data/repository/card_repository.dart';
import 'package:lorcana_collection/features/cards/presentation/controllers/card_list_controller.dart';

class CardsListFilters extends ConsumerWidget {
  const CardsListFilters({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DropdownButton<CardSort>(
            value: ref.watch(cardsSearchOrderNotifierProvider),
            hint: const Text('Sort by'),
            items: CardSort.values
                .map(
                  (CardSort sort) => DropdownMenuItem<CardSort>(
                    value: sort,
                    child: Text(sort.name),
                  ),
                )
                .toList(),
            onChanged: (CardSort? newSort) => ref.read(cardsSearchOrderNotifierProvider.notifier).setSort(newSort),
          ),
          DropdownButton<Chapter>(
            value: ref.watch(cardsSearchChapterNotifierProvider),
            hint: const Text('Chapter'),
            items: Chapter.values
                .map(
                  (Chapter chapter) => DropdownMenuItem<Chapter>(
                    value: chapter,
                    child: Text(chapter.name),
                  ),
                )
                .toList(),
            onChanged: (Chapter? newChapter) =>
                ref.read(cardsSearchChapterNotifierProvider.notifier).setNewChapter(newChapter),
          ),
        ],
      ),
    );
  }
}
