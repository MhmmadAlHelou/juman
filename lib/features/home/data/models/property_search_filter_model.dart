import 'package:equatable/equatable.dart';

class PropertySearchFilterModel extends Equatable {
  const PropertySearchFilterModel({
    this.search,
    this.city,
    this.category,
    this.placeType,
    this.bedroomsGte,
    this.bathroomsGte,
    this.priceMin,
    this.priceMax,
    this.maxGuestsGte,
    this.ordering,
  });

  final String? search;
  final String? city; // uuid
  final String? category; // uuid
  final String? placeType; // uuid
  final int? bedroomsGte;
  final int? bathroomsGte;
  final double? priceMin;
  final double? priceMax;
  final int? maxGuestsGte;
  final String? ordering;

  bool get isEmpty =>
      search == null &&
      city == null &&
      category == null &&
      placeType == null &&
      bedroomsGte == null &&
      bathroomsGte == null &&
      priceMin == null &&
      priceMax == null &&
      maxGuestsGte == null &&
      ordering == null;

  Map<String, dynamic> toQueryParams() {
    final Map<String, dynamic> params = <String, dynamic>{};
    if (search != null && search!.isNotEmpty) params['search'] = search;
    if (city != null) params['city'] = city;
    if (category != null) params['category'] = category;
    if (placeType != null) params['place_type'] = placeType;
    if (bedroomsGte != null) params['bedrooms__gte'] = bedroomsGte;
    if (bathroomsGte != null) params['bathrooms__gte'] = bathroomsGte;
    if (priceMin != null) params['price_per_night__gte'] = priceMin;
    if (priceMax != null) params['price_per_night__lte'] = priceMax;
    if (maxGuestsGte != null) params['max_guests__gte'] = maxGuestsGte;
    if (ordering != null) params['ordering'] = ordering;
    return params;
  }

  PropertySearchFilterModel copyWith({
    ValueGetter<String?>? search,
    ValueGetter<String?>? city,
    ValueGetter<String?>? category,
    ValueGetter<String?>? placeType,
    ValueGetter<int?>? bedroomsGte,
    ValueGetter<int?>? bathroomsGte,
    ValueGetter<double?>? priceMin,
    ValueGetter<double?>? priceMax,
    ValueGetter<int?>? maxGuestsGte,
    ValueGetter<String?>? ordering,
  }) {
    return PropertySearchFilterModel(
      search: search != null ? search() : this.search,
      city: city != null ? city() : this.city,
      category: category != null ? category() : this.category,
      placeType: placeType != null ? placeType() : this.placeType,
      bedroomsGte: bedroomsGte != null ? bedroomsGte() : this.bedroomsGte,
      bathroomsGte: bathroomsGte != null ? bathroomsGte() : this.bathroomsGte,
      priceMin: priceMin != null ? priceMin() : this.priceMin,
      priceMax: priceMax != null ? priceMax() : this.priceMax,
      maxGuestsGte: maxGuestsGte != null ? maxGuestsGte() : this.maxGuestsGte,
      ordering: ordering != null ? ordering() : this.ordering,
    );
  }

  @override
  List<Object?> get props => <Object?>[
    search,
    city,
    category,
    placeType,
    bedroomsGte,
    bathroomsGte,
    priceMin,
    priceMax,
    maxGuestsGte,
    ordering,
  ];
}

typedef ValueGetter<T> = T Function();
