import 'package:flutter/material.dart';

class FilterData {
  final String? gymName;
  final String? gender;
  final List<String> gymTypes;
  final String? area;
  final List<String> facilities;
  final RangeValues priceRange;
  final String? subscriptionType;
  final bool includesOffer;

  FilterData({
    this.gymName,
    this.gender,
    this.gymTypes = const [],
    this.area,
    this.facilities = const [],
    this.priceRange = const RangeValues(0, 1000),
    this.subscriptionType,
    this.includesOffer = false,
  });

  bool get hasActiveFilters {
    return gymName != null ||
        gender != null ||
        gymTypes.isNotEmpty ||
        area != null ||
        facilities.isNotEmpty ||
        priceRange.start > 0 ||
        priceRange.end < 1000 ||
        subscriptionType != null ||
        includesOffer;
  }

  FilterData copyWith({
    String? gymName,
    String? gender,
    List<String>? gymTypes,
    String? area,
    List<String>? facilities,
    RangeValues? priceRange,
    String? subscriptionType,
    bool? includesOffer,
  }) {
    return FilterData(
      gymName: gymName ?? this.gymName,
      gender: gender ?? this.gender,
      gymTypes: gymTypes ?? this.gymTypes,
      area: area ?? this.area,
      facilities: facilities ?? this.facilities,
      priceRange: priceRange ?? this.priceRange,
      subscriptionType: subscriptionType ?? this.subscriptionType,
      includesOffer: includesOffer ?? this.includesOffer,
    );
  }

  @override
  String toString() {
    return 'FilterData(gymName: $gymName, gender: $gender, gymTypes: $gymTypes, '
        'area: $area, facilities: $facilities, priceRange: $priceRange, '
        'subscriptionType: $subscriptionType, includesOffer: $includesOffer)';
  }
}
