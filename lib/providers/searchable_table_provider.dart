import 'package:mashael_al_qasr_5/models/table_response/table_response.dart';
import 'package:mashael_al_qasr_5/providers/table_provider.dart';
import 'package:mashael_al_qasr_5/utils/api.dart';
import 'package:mashael_al_qasr_5/utils/random.dart';

class SearchableTableProvider<T> extends TableProvider<T> {
  String _searchValue = "";
  String get searchValue => _searchValue;
  set searchValue(String searchValue) {
    if (searchValue == _searchValue) return;
    _searchValue = searchValue;

    search(searchValue);
  }

  Future<void> search(String searchValue) {
    return fetchAndSetData(additionalQueryParameters: {"query": searchValue});
  }

  SearchableTableProvider({
    required String url,
    required T Function(Map<String, dynamic> json) fromJson,
    required Map<String, dynamic> queryParameters,
  }) : super(url: url, fromJson: fromJson, queryParameters: queryParameters);

  @override
  Future<void> fetchAndSetData({
    Map<String, dynamic> additionalQueryParameters = const {},
    bool loadMore = false,
  }) async {
    if (loadMore && !result.hasMore) return;

    try {
      status = ApiStatus.loading;

      final String handshakeCode = RandomCustom.string(6);

      final queryParameters = {
        ...additionalQueryParameters,
        "handshakeCode": handshakeCode,
      };

      TableResponse<T> response = await fetch(
        additionalQueryParameters: queryParameters,
        loadMore: loadMore,
      );

      if (response.handshakeCode == handshakeCode) {
        setFetchedResult(response, loadMore);
        status = ApiStatus.loaded;
      }
    } catch (e) {
      status = ApiStatus.error;
      rethrow;
    } finally {
      notifyListeners();
    }
  }

  @override
  Future<void> refresh() async {
    await search(searchValue);
  }
}
