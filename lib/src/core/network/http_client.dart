import 'dart:core';
import 'package:biniyog/src/core/network/exceptions.dart';
import 'package:biniyog/values/constants.dart';
import 'package:dio/dio.dart';

/// Expose a HTTP client without actually exposing that we're using [Dio]
/// underneath.
class HttpClient {
  late final Dio _client;

  HttpClient() {
    _client = Dio(
      BaseOptions(
        baseUrl: Constants.baseUrl,
        connectTimeout: 100000,
        receiveTimeout: 100000,
      ),
    );
  }

  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return await _client.get<T>(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
    } on DioError catch (e) {
      throw NetworkExceptions.getDioException(e);
    }
  }
}
