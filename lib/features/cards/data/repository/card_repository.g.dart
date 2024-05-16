// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cardRepositoryHash() => r'f43335a5cb1b3db521b942689b6cb766d2467685';

/// See also [cardRepository].
@ProviderFor(cardRepository)
final cardRepositoryProvider = AutoDisposeProvider<CardRepository>.internal(
  cardRepository,
  name: r'cardRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$cardRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CardRepositoryRef = AutoDisposeProviderRef<CardRepository>;
String _$cardsListSearchHash() => r'2d7bfe13b96cf9fb17247ff4877515efb9a04ce2';

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

/// See also [cardsListSearch].
@ProviderFor(cardsListSearch)
const cardsListSearchProvider = CardsListSearchFamily();

/// See also [cardsListSearch].
class CardsListSearchFamily extends Family<AsyncValue<List<CardEntity>>> {
  /// See also [cardsListSearch].
  const CardsListSearchFamily();

  /// See also [cardsListSearch].
  CardsListSearchProvider call(
    ({
      Chapter chapter,
      bool isFavorite,
      String search,
      CardSort sort
    }) cardQueryData,
  ) {
    return CardsListSearchProvider(
      cardQueryData,
    );
  }

  @override
  CardsListSearchProvider getProviderOverride(
    covariant CardsListSearchProvider provider,
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
  String? get name => r'cardsListSearchProvider';
}

/// See also [cardsListSearch].
class CardsListSearchProvider
    extends AutoDisposeFutureProvider<List<CardEntity>> {
  /// See also [cardsListSearch].
  CardsListSearchProvider(
    ({
      Chapter chapter,
      bool isFavorite,
      String search,
      CardSort sort
    }) cardQueryData,
  ) : this._internal(
          (ref) => cardsListSearch(
            ref as CardsListSearchRef,
            cardQueryData,
          ),
          from: cardsListSearchProvider,
          name: r'cardsListSearchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$cardsListSearchHash,
          dependencies: CardsListSearchFamily._dependencies,
          allTransitiveDependencies:
              CardsListSearchFamily._allTransitiveDependencies,
          cardQueryData: cardQueryData,
        );

  CardsListSearchProvider._internal(
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
    FutureOr<List<CardEntity>> Function(CardsListSearchRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CardsListSearchProvider._internal(
        (ref) => create(ref as CardsListSearchRef),
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
    return _CardsListSearchProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CardsListSearchProvider &&
        other.cardQueryData == cardQueryData;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, cardQueryData.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CardsListSearchRef on AutoDisposeFutureProviderRef<List<CardEntity>> {
  /// The parameter `cardQueryData` of this provider.
  ({Chapter chapter, bool isFavorite, String search, CardSort sort})
      get cardQueryData;
}

class _CardsListSearchProviderElement
    extends AutoDisposeFutureProviderElement<List<CardEntity>>
    with CardsListSearchRef {
  _CardsListSearchProviderElement(super.provider);

  @override
  ({Chapter chapter, bool isFavorite, String search, CardSort sort})
      get cardQueryData => (origin as CardsListSearchProvider).cardQueryData;
}

String _$isCardFavoriteHash() => r'3f92fea93246ae37192d2f4ee70cb3afcee8494a';

/// See also [isCardFavorite].
@ProviderFor(isCardFavorite)
const isCardFavoriteProvider = IsCardFavoriteFamily();

/// See also [isCardFavorite].
class IsCardFavoriteFamily extends Family<AsyncValue<bool>> {
  /// See also [isCardFavorite].
  const IsCardFavoriteFamily();

  /// See also [isCardFavorite].
  IsCardFavoriteProvider call(
    CardEntity card,
  ) {
    return IsCardFavoriteProvider(
      card,
    );
  }

  @override
  IsCardFavoriteProvider getProviderOverride(
    covariant IsCardFavoriteProvider provider,
  ) {
    return call(
      provider.card,
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
  String? get name => r'isCardFavoriteProvider';
}

/// See also [isCardFavorite].
class IsCardFavoriteProvider extends AutoDisposeStreamProvider<bool> {
  /// See also [isCardFavorite].
  IsCardFavoriteProvider(
    CardEntity card,
  ) : this._internal(
          (ref) => isCardFavorite(
            ref as IsCardFavoriteRef,
            card,
          ),
          from: isCardFavoriteProvider,
          name: r'isCardFavoriteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isCardFavoriteHash,
          dependencies: IsCardFavoriteFamily._dependencies,
          allTransitiveDependencies:
              IsCardFavoriteFamily._allTransitiveDependencies,
          card: card,
        );

  IsCardFavoriteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.card,
  }) : super.internal();

  final CardEntity card;

  @override
  Override overrideWith(
    Stream<bool> Function(IsCardFavoriteRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: IsCardFavoriteProvider._internal(
        (ref) => create(ref as IsCardFavoriteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        card: card,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<bool> createElement() {
    return _IsCardFavoriteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IsCardFavoriteProvider && other.card == card;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, card.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin IsCardFavoriteRef on AutoDisposeStreamProviderRef<bool> {
  /// The parameter `card` of this provider.
  CardEntity get card;
}

class _IsCardFavoriteProviderElement
    extends AutoDisposeStreamProviderElement<bool> with IsCardFavoriteRef {
  _IsCardFavoriteProviderElement(super.provider);

  @override
  CardEntity get card => (origin as IsCardFavoriteProvider).card;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
