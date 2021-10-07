import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_freezed_json/core/remote/interceptors/log_interceptor.dart';
import 'package:dio_freezed_json/core/remote/network_options/network_options.dart';

import '../interfaces/base_client_generator.dart';

class NetworkCreator {
  static var shared = NetworkCreator();
  final Dio _dioInstance = Dio();

  Future<Response> request(
      {required BaseClientGenerator route, NetworkOptions? options}) {
    _dioInstance.interceptors.add(APILogInterceptor());
    return _dioInstance.fetch(RequestOptions(
        //followRedirects: true,
        receiveDataWhenStatusError: true,
        responseType: ResponseType.json,
        baseUrl: route.baseURL,
        method: route.method,
        path: route.path,
        queryParameters: route.queryParameters,
        headers: route.header,
        data: route.body,
        sendTimeout: route.sendTimeout,
        receiveTimeout: route.sendTimeout,
        onReceiveProgress: options?.onReceiveProgress,
        // validateStatus: (status) {
        //   return status! < 500;
        // }
        validateStatus: (statusCode) => (statusCode! >= HttpStatus.ok &&
            statusCode <= HttpStatus.multipleChoices)));
  }
}
