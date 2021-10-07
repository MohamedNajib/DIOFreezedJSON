import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio_freezed_json/core/remote/interfaces/base_network_model.dart';

class NetworkDecoder {
  static var shared = NetworkDecoder();

  K decode<T extends BaseNetworkModel, K>(
      {required Response<dynamic> response, required T responseType}) {
    try {
      if (response.data is String) {
        return List<T>.from(
                json.decode(response.data).map((x) => responseType.fromJson(x)))
            as K;
      } else if (response.data is List) {
        //print(" ${response.data}");
        var list = response.data as List;
        var dataList = List<T>.from(
            list.map((item) => responseType.fromJson(item)).toList()) as K;
        return dataList;
      } else {
        var data = responseType.fromJson(response.data) as K;
        return data;
      }
    } on TypeError catch (e) {
      throw e;
    }
  }
}
