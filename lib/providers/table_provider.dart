import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:mashael_al_qasr_5/models/table_response/table_response.dart';
import 'package:mashael_al_qasr_5/utils/api.dart';

class TableProviderContainer<T> extends StatefulWidget {
  final Widget child;
  final String url;
  final T Function(Map<String, dynamic>) fromJson;
  final Map<String, dynamic> queryParameters;

  const TableProviderContainer({
    Key? key,
    required this.child,
    required this.url,
    required this.fromJson,
    required this.queryParameters,
  }) : super(key: key);

  @override
  State<TableProviderContainer<T>> createState() =>
      _TableProviderContainerState<T>();
}

class _TableProviderContainerState<T> extends State<TableProviderContainer<T>> {
  late final TableProvider<T> _tableProvider;

  @override
  initState() {
    super.initState();
    _tableProvider = TableProvider<T>(
      url: widget.url,
      fromJson: widget.fromJson,
      queryParameters: widget.queryParameters,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _tableProvider,
      child: widget.child,
    );
  }
}

class TableProvider<T> extends ChangeNotifier {
  final String url;
  final Map<String, dynamic> queryParameters;
  final T Function(Map<String, dynamic>) fromJson;

  TableProvider({
    required this.url,
    required this.fromJson,
    required this.queryParameters,
  }) {
    fetchAndSetData();
  }

  void addQueryParameter(Map<String, dynamic> additionalParameters) {
    queryParameters.addAll(additionalParameters);
  }

  TableResponse<T> result = TableResponse();
  List<T> get elements => result.data;

  ApiStatus _status = ApiStatus.initial;
  ApiStatus get status => _status;
  set status(ApiStatus status) {
    if (status == _status) return;
    _status = status;
    Future.delayed(Duration.zero, notifyListeners);
  }

  int _page = 1;
  int get page => _page;
  set page(int page) {
    _page = page;
    fetchAndSetData();
  }

  Future<void> fetchMore() async {
    if (status == ApiStatus.loading) return;
    await fetchAndSetData(loadMore: true);
  }

  Future<void> refresh() async {
    await fetchAndSetData();
  }

  Future<void> fetchAndSetData({
    Map<String, dynamic> additionalQueryParameters = const {},
    bool loadMore = false,
  }) async {
    if (loadMore && !result.hasMore) return;

    try {
      status = ApiStatus.loading;

      TableResponse<T> response = await fetch(
        additionalQueryParameters: additionalQueryParameters,
        loadMore: loadMore,
      );

      setFetchedResult(response, loadMore);
      status = ApiStatus.loaded;
    } catch (e) {
      status = ApiStatus.error;
      rethrow;
    }
  }

  Future<TableResponse<T>> fetch({
    required Map<String, dynamic> additionalQueryParameters,
    required bool loadMore,
  }) async {
    if (loadMore) {
      _page++;
    } else {
      _page = 1;
    }

    final queryParameters = {
      ...this.queryParameters,
      ...additionalQueryParameters,
      "page": page,
    };

    final Map<String, dynamic> data =
        await Api.getRaw(url, queryParameters: queryParameters);
    final TableResponse<T> response = TableResponse<T>.fromJson(data, fromJson);
    return response;
  }

  void setFetchedResult(TableResponse<T> response, bool loadMore) {
    if (loadMore) {
      result = result.copyWith(
        hasMore: response.hasMore,
        data: [...result.data, ...response.data],
      );
    } else {
      result = response;
    }
  }
}
