// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cardsResultsHash() => r'bb12accd513110e88144f72f6aab63078d0591c1';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [cardsResults].
@ProviderFor(cardsResults)
const cardsResultsProvider = CardsResultsFamily();

/// See also [cardsResults].
class CardsResultsFamily extends Family<AsyncValue<List<CardEntity>>> {
  /// See also [cardsResults].
  const CardsResultsFamily();

  /// See also [cardsResults].
  CardsResultsProvider call(
    ({
      Chapter chapter,
      bool isFavorite,
      String search,
      CardSort sort
    }) cardQueryData,
  ) {
    return CardsResultsProvider(
      cardQueryData,
    );
  }

  @override
  CardsResultsProvider getProviderOverride(
    covariant CardsResultsProvider provider,
  ) {
    return call(
      provider.cardQueryData,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'cardsResultsProvider';
}

/// See also [cardsResults].
class CardsResultsProvider extends AutoDisposeFutureProvider<List<CardEntity>> {
  /// See also [cardsResults].
  CardsResultsProvider(
    ({
      Chapter chapter,
      bool isFavorite,
      String search,
      CardSort sort
    }) cardQueryData,
  ) : this._internal(
          (ref) => cardsResults(
            ref as CardsResultsRef,
            cardQueryData,
          ),
          from: cardsResultsProvider,
          name: r'cardsResultsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$cardsResultsHash,
          dependencies: CardsResultsFamily._dependencies,
          allTransitiveDependencies:
              CardsResultsFamily._allTransitiveDependencies,
          cardQueryData: cardQueryData,
        );

  CardsResultsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.cardQueryData,
  }) : super.internal();

  final ({
    Chapter chapter,
    bool isFavorite,
    String search,
    CardSort sort
  }) cardQueryData;

  @override
  Override overrideWith(
    FutureOr<List<CardEntity>> Function(CardsResultsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CardsResultsProvider._internal(
        (ref) => create(ref as CardsResultsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        cardQueryData: cardQueryData,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<CardEntity>> createElement() {
    return _CardsResultsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CardsResultsProvider &&
        other.cardQueryData == cardQueryData;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, cardQueryData.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CardsResultsRef on AutoDisposeFutureProviderRef<List<CardEntity>> {
  /// The parameter `cardQueryData` of this provider.
  ({Chapter chapter, bool isFavorite, String search, CardSort sort})
      get cardQueryData;
}

class _CardsResultsProviderElement
    extends AutoDisposeFutureProviderElement<List<CardEntity>>
    with CardsResultsRef {
  _CardsResultsProviderElement(super.provider);

  @override
  ({Chapter chapter, bool isFavorite, String search, CardSort sort})
      get cardQueryData => (origin as CardsResultsProvider).cardQueryData;
}

String _$cardsSearchIsFavoriteNotifierHash() =>
    r'b5e079ba39442ea0ab3734962e04a06de2cbba46';

/// A Simple notifier class to keep track of the isFavorite
///
/// Copied from [CardsSearchIsFavoriteNotifier].
@ProviderFor(CardsSearchIsFavoriteNotifier)
final cardsSearchIsFavoriteNotifierProvider =
    AutoDisposeNotifierProvider<CardsSearchIsFavoriteNotifier, bool>.internal(
  CardsSearchIsFavoriteNotifier.new,
  name: r'cardsSearchIsFavoriteNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$cardsSearchIsFavoriteNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CardsSearchIsFavoriteNotifier = AutoDisposeNotifier<bool>;
String _$cardsSearchChapterNotifierHash() =>
    r'5f4d842ad9e17aab1eb7b0e9d5a7b703e84354c4';

/// A simple notifier class to keep track of the chapter
///
/// Copied from [CardsSearchChapterNotifier].
@ProviderFor(CardsSearchChapterNotifier)
final cardsSearchChapterNotifierProvider =
    AutoDisposeNotifierProvider<CardsSearchChapterNotifier, Chapter>.internal(
  CardsSearchChapterNotifier.new,
  name: r'cardsSearchChapterNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$cardsSearchChapterNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CardsSearchChapterNotifier = AutoDisposeNotifier<Chapter>;
String _$cardsSearchOrderNotifierHash() =>
    r'5ebe27cc047c7ec535cdd8c29b5d7969464261fc';

/// A simple notifier class to keep track of the sort order
///
/// Copied from [CardsSearchOrderNotifier].
@ProviderFor(CardsSearchOrderNotifier)
final cardsSearchOrderNotifierProvider =
    AutoDisposeNotifierProvider<CardsSearchOrderNotifier, CardSort>.internal(
  CardsSearchOrderNotifier.new,
  name: r'cardsSearchOrderNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$cardsSearchOrderNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CardsSearchOrderNotifier = AutoDisposeNotifier<CardSort>;
String _$cardsSearchQueryNotifierHash() =>
    r'903d58b26eb8b656088f3905521621f953d7d58c';

/// A simple notifier class to keep track of the search query
///
/// Copied from [CardsSearchQueryNotifier].
@ProviderFor(CardsSearchQueryNotifier)
final cardsSearchQueryNotifierProvider =
    AutoDisposeNotifierProvider<CardsSearchQueryNotifier, String>.internal(
  CardsSearchQueryNotifier.new,
  name: r'cardsSearchQueryNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$cardsSearchQueryNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CardsSearchQueryNotifier = AutoDisposeNotifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
