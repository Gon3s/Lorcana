import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lorcana_collection/features/cards/presentation/controllers/card_list_controller.dart';

/// Search field used to filter products by name
class CardsSearchTextField extends ConsumerStatefulWidget {
  const CardsSearchTextField({super.key});

  @override
  ConsumerState<CardsSearchTextField> createState() => _CardsSearchTextFieldState();
}

class _CardsSearchTextFieldState extends ConsumerState<CardsSearchTextField> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    // * TextEditingControllers should be always disposed
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // See this article for more info about how to use [ValueListenableBuilder]
    // with TextField:
    // https://codewithandrea.com/articles/flutter-text-field-form-validation/
    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: _controller,
      builder: (context, value, _) {
        return TextField(
          controller: _controller,
          style: Theme.of(context).textTheme.titleLarge,
          decoration: InputDecoration(
            hintText: 'Search cards',
            icon: const Icon(Icons.search),
            suffixIcon: value.text.isNotEmpty
                ? IconButton(
                    onPressed: () {
                      _controller.clear();
                      ref.read(cardsSearchQueryNotifierProvider.notifier).setQuery('');
                    },
                    icon: const Icon(Icons.clear),
                  )
                : null,
          ),
          onChanged: (text) => ref.read(cardsSearchQueryNotifierProvider.notifier).setQuery(text),
        );
      },
    );
  }
}
