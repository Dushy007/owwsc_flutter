import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      debugPrint('🚀 REQUEST: ${options.method} ${options.uri}');
      debugPrint('📝 Headers: ${options.headers}');
      if (options.data != null) {
        debugPrint('📦 Data: ${options.data}');
      }
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (kDebugMode) {
      debugPrint('✅ RESPONSE: ${response.statusCode} ${response.requestOptions.uri}');
      debugPrint('📦 Data: ${response.data}');
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      debugPrint('❌ ERROR: ${err.response?.statusCode} ${err.requestOptions.uri}');
      debugPrint('💬 Message: ${err.message}');
    }
    super.onError(err, handler);
  }
}