import 'package:flutter/material.dart';
import 'package:lorcana_collection/common_widgets/responsive_center.dart';
import 'package:lorcana_collection/constants/app_sizes.dart';
import 'package:lorcana_collection/features/cards/presentation/cards_grid.dart';
import 'package:lorcana_collection/features/cards/presentation/cards_list_filters.dart';
import 'package:lorcana_collection/features/cards/presentation/cards_search_text_field.dart';
import 'package:lorcana_collection/features/cards/presentation/favorite_icon.dart';
import 'package:lorcana_collection/features/cards/presentation/logout_icon.dart';

class CardsListScreen extends StatefulWidget {
  const CardsListScreen({super.key});

  @override
  State<CardsListScreen> createState() => _CardsListScreenState();
}

class _CardsListScreenState extends State<CardsListScreen> {
  // * Use a [ScrollController] to register a listener that dismisses the
  // * on-screen keyboard when the user scrolls.
  // * This is needed because this page has a search field that the user can
  // * type into.
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_dismissOnScreenKeyboard);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_dismissOnScreenKeyboard);
    super.dispose();
  }

  // When the search text field gets the focus, the keyboard appears on mobile.
  // This method is used to dismiss the keyboard when the user scrolls.
  void _dismissOnScreenKeyboard() {
    if (FocusScope.of(context).hasFocus) {
      FocusScope.of(context).unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lorcana'),
        actions: const [
          FavoriteIcon(),
          LogoutIcon(),
        ],
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: const [
          ResponsiveSliverCenter(
            padding: EdgeInsets.symmetric(
              horizontal: Sizes.p16,
              vertical: Sizes.p4,
            ),
            child: CardsSearchTextField(),
          ),
          ResponsiveSliverCenter(
            padding: EdgeInsets.symmetric(
              horizontal: Sizes.p16,
              vertical: Sizes.p4,
            ),
            child: CardsListFilters(),
          ),
          ResponsiveSliverCenter(
            padding: EdgeInsets.all(Sizes.p16),
            child: CardsGrid(),
          ),
        ],
      ),
    );
  }
}
