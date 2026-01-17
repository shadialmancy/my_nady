import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_search_provider.g.dart';

@riverpod
class HomeSearchQuery extends _$HomeSearchQuery {
  @override
  String build() => '';

  void setQuery(String query) => state = query;
}
