import 'package:mashael_al_qasr_5/models/filters.dart';
import 'package:mashael_al_qasr_5/providers/table_provider.dart';

class TableWithFilterProvider<T> extends TableProvider<T> {
  TableWithFilterProvider({
    required String url,
    required T Function(Map<String, dynamic>) fromJson,
    required Map<String, dynamic> queryParameters,
  }) : super(
          url: url,
          fromJson: fromJson,
          queryParameters: queryParameters,
        );

  Filters _filters = Filters();
  Filters get filters => _filters;
  set filters(Filters filters) {
    _filters = filters;
    fetchWithFilters();
  }

  Future<void> fetchWithFilters({loadMore = false}) async {
    fetchAndSetData(
      additionalQueryParameters: filters.toQueryParameters(),
      loadMore: loadMore,
    );
  }

  void resetCustomerFilters() {
    filters = filters.copyWith(customerNo: null);
  }

  void resetDateFilters() {
    filters = filters.copyWith(fromDate: null, toDate: null);
  }

  @override
  Future<void> fetchMore() async {
    if (filters.hasFilters) {
      return fetchWithFilters(loadMore: true);
    }
    return super.fetchMore();
  }

  @override
  Future<void> refresh() async {
    return fetchWithFilters();
  }
}
