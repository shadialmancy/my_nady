import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer.freezed.dart';
part 'offer.g.dart';

@freezed
class Offer with _$Offer {
  factory Offer({
    String? id,
    String? name,
    String? discountType,
    num? discountValue,
    DateTime? endDate,
  }) = _Offer;

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
