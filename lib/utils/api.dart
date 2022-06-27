import 'package:dio/dio.dart';
import 'package:mashael_al_qasr_5/providers/config_provider.dart';

enum ApiStatus {
  initial,
  loading,
  loaded,
  error,
}

typedef FromJson<T> = T Function(Map<String, dynamic> json);

class Api {
  static Future<T> post<T>(
    String url, {
    required Map<String, dynamic>? data,
    required FromJson<T> fromJson,
  }) async {
    Response response = await Dio(ConfigProvider.dioOptions).post(
      url,
      data: data,
    );
    dynamic jsonRespone = response.data["data"];
    return fromJson(jsonRespone);
  }

  static Future<T> get<T>(
    String url, {
    FromJson<T>? fromJson,
    Map<String, dynamic>? queryParameters,
  }) async {
    Response repsonse = await Dio(ConfigProvider.dioOptions)
        .get(url, queryParameters: queryParameters);
    final jsonReponse = repsonse.data['data'];
    if (fromJson != null) return fromJson(jsonReponse);
    return jsonReponse;
  }

  static Future<Map<String, dynamic>> getRaw(
    String url, {
    Map<String, dynamic>? queryParameters,
  }) async {
    Response repsonse = await Dio(ConfigProvider.dioOptions)
        .get(url, queryParameters: queryParameters);
    final jsonReponse = repsonse.data;
    return jsonReponse;
  }

  static Future<List<T>> getList<T>(
    String url, {
    required FromJson<T> fromJson,
  }) async {
    Response repsonse = await Dio(ConfigProvider.dioOptions).get(url);

    final jsonReponse = repsonse.data['data'] as List;

    List<T> listElements = List<T>.from(
      jsonReponse.map(
        (element) => fromJson(element),
      ),
    );

    return listElements;
  }
}
