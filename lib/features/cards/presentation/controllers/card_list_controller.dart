import 'dart:async';

import 'package:lorcana_collection/features/cards/data/repository/card_repository.dart';
import 'package:lorcana_collection/features/cards/domain/entities/card.dart';
import 'package:lorcana_collection/util/colored_debug_printer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'card_list_controller.g.dart';

@riverpod
Future<List<CardEntity>> cardsResults(CardsResultsRef ref, CardQueryData cardQueryData) async =>
    ref.watch(cardsListSearchProvider(cardQueryData).future);

/// A Simple notifier class to keep track of the isFavorite
@riverpod
class CardsSearchIsFavoriteNotifier extends _$CardsSearchIsFavoriteNotifier {
  @override
  bool build() {
    return false;
  }

  void toggleFavorite() {
    state = !state;
  }
}

/// A simple notifier class to keep track of the chapter
@riverpod
class CardsSearchChapterNotifier extends _$CardsSearchChapterNotifier {
  @override
  Chapter build() {
    return Chapter.allChampter;
  }

  void setNewChapter(Chapter? newChapter) {
    if (newChapter != null) {
      state = newChapter;
    }
  }
}

/// A simple notifier class to keep track of the sort order
@riverpod
class CardsSearchOrderNotifier extends _$CardsSearchOrderNotifier {
  @override
  CardSort build() {
    return CardSort.numberAsc;
  }

  void setSort(CardSort? newSort) {
    if (newSort != null) {
      state = newSort;
    }
  }
}

/// A simple notifier class to keep track of the search query
@riverpod
class CardsSearchQueryNotifier extends _$CardsSearchQueryNotifier {
  /// Used to debounce the input queries
  Timer? _debounceTimer;

  @override
  String build() {
    // don't forget to close the StreamController and cancel the subscriptions on dispose
    ref.onDispose(() {
      _debounceTimer?.cancel();
    });
    // by default, return an empty query
    return '';
  }

  void setQuery(String query) {
    Print.green('DLOG', 'debounce query: $query');
    // Cancel the timer if it is active
    if (_debounceTimer != null) {
      _debounceTimer!.cancel();
    }
    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      Print.green('Log', 'debounce state: $query');
      // only update the state once the query has been debounced
      state = query;
    });
  }
}
