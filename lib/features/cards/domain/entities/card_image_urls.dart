import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lorcana_collection/features/cards/data/schemas/card.dart';

part 'card_image_urls.freezed.dart';
part 'card_image_urls.g.dart';

@freezed
class CardImageUrlsEntity with _$CardImageUrlsEntity {
  factory CardImageUrlsEntity({
    required int height,
    required String url,
  }) = _CardImageUrlsEntity;
  const CardImageUrlsEntity._();

  factory CardImageUrlsEntity.fromJson(Map<String, dynamic> json) => _$CardImageUrlsEntityFromJson(json);

  factory CardImageUrlsEntity.fromSchema(CardImageUrls cardImageUrls) {
    return CardImageUrlsEntity(
      height: cardImageUrls.height ?? 0,
      url: cardImageUrls.url.toString(),
    );
  }

  CardImageUrls toSchema() {
    return CardImageUrls(
      height: height,
      url: url,
    );
  }
}
