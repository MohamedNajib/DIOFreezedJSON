const defaultConnectTimeout = Duration.millisecondsPerMinute;
const defaultReceiveTimeout = Duration.millisecondsPerMinute;

abstract class BaseClientGenerator {
  const BaseClientGenerator();

  String get path;
  String get method;
  String get baseURL;
  dynamic get body;
  Map<String, dynamic>? get queryParameters;
  Map<String, dynamic> get header;
  int? get sendTimeout => defaultConnectTimeout;
  int? get receiveTimeOut => defaultReceiveTimeout;
}
