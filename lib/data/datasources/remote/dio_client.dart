import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:owwsc_mock_responsive/data/datasources/remote/exceptions.dart';
import 'package:owwsc_mock_responsive/data/datasources/remote/interceptors/logging_interceptor.dart';

class DioClient {
  static DioClient? _instance;
  late Dio _dio;

  // Singleton pattern - recommended by Dio documentation
  factory DioClient() {
    return _instance ??= DioClient._internal();
  }

  DioClient._internal() {
    _dio = Dio(_createBaseOptions());
    _setupInterceptors();
  }

  BaseOptions _createBaseOptions() {
    return BaseOptions(
      baseUrl: 'https://eservicesuat.nws.nama.om:444/api',
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 40),
      sendTimeout: const Duration(seconds: 30),
      // headers: {
      //   'Content-Type': 'application/json',
      //   'Accept': 'application/json',
      // },
      responseType: ResponseType.json,
      followRedirects: true,
      maxRedirects: 3,
    );
  }

  void _setupInterceptors() {
    _dio.interceptors.clear();

    if (kDebugMode) {
      _dio.interceptors.add(LoggingInterceptor());
    }
  }

  // POST request
  Future<Response<T>> post<T>(
    String path, {
    Map<String, dynamic>? fields,
    List<MultipartFileData>? files,
    Map<String, dynamic>? queryParameters,
    Options? options,
    ProgressCallback? onSendProgress,
  }) async {
    try {
      final formData = await _buildFormData(
        fields: fields,
        files: files,
      );

      final requestOptions = Options(
        headers: {
          ...?options?.headers,
        },
        contentType: options?.contentType,
        responseType: options?.responseType,
      );

      final response = await _dio.post<T>(
        path,
        data: formData,
        queryParameters: queryParameters,
        options: requestOptions,
        onSendProgress: onSendProgress,
      );

      return _handleResponse<T>(response);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  Response<T> _handleResponse<T>(Response<T> response) {
    if (response.statusCode != null &&
        response.statusCode! >= 200 &&
        response.statusCode! < 300) {
      return response;
    } else {
      throw ApiException(
        'Request failed with status: ${response.statusCode}',
        statusCode: response.statusCode,
      );
    }
  }

  _handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return TimeoutException(
          'Request timeout. Please check your connection',
        );

      case DioExceptionType.connectionError:
        return NetworkException('Network error. Please check your connection.');

      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        final message =
            error.response?.data?['message'] ??
            error.response?.statusMessage ??
            'Unknown error occurred';

        switch (statusCode) {
          case 401:
            return AuthException('Unauthorized. Please login again.');
          case 403:
            return ApiException(
              'Forbidden. You don\'t have permission.',
              statusCode: statusCode,
            );
          case 404:
            return ApiException('Resource not found.', statusCode: statusCode);
          case 422:
            return ApiException(
              'Validation failed: $message',
              statusCode: statusCode,
            );
          case 500:
            return ApiException(
              'Server error. Please try again later.',
              statusCode: statusCode,
            );
          default:
            return ApiException(message, statusCode: statusCode);
        }
      case DioExceptionType.cancel:
        return ApiException('Request was cancelled.');

      default:
        return ApiException('Unexpected error: ${error.message}');
    }
  }

  Future<FormData> _buildFormData({
    Map<String, dynamic>? fields,
    List<MultipartFileData>? files,
  }) async {
    final formDataMap = <String, dynamic>{};

    if (fields != null) {
      formDataMap.addAll(fields);
    }

    if (files != null) {
      for (final fileData in files) {
        MultipartFile multipartFile;

        if (fileData.filePath != null) {
          // File from path
          multipartFile = await MultipartFile.fromFile(
            fileData.filePath!,
            filename: fileData.filename,
            contentType: fileData.contentType,
          );
        } else if (fileData.bytes != null) {
          // File from bytes
          multipartFile = MultipartFile.fromBytes(
            fileData.bytes!,
            filename: fileData.filename,
            contentType: fileData.contentType,
          );
        } else {
          throw ArgumentError(
            'MultipartFileData must have either filePath, bytes, or stream',
          );
        }

        if (fileData.isArray) {
          // Handle multiple files with same field name
          if (formDataMap[fileData.fieldName] is List) {
            (formDataMap[fileData.fieldName] as List).add(multipartFile);
          } else {
            formDataMap[fileData.fieldName] = [multipartFile];
          }
        } else {
          formDataMap[fileData.fieldName] = multipartFile;
        }
      }
    }

    return FormData.fromMap(formDataMap, ListFormat.multi, false);
  }
}

// Class to handle multipart file data
class MultipartFileData {
  final String fieldName;
  final String? filePath;
  final Uint8List? bytes;
  final Stream<List<int>>? stream;
  final int? length;
  final String? filename;
  final DioMediaType? contentType;
  final bool isArray;

  const MultipartFileData({
    required this.fieldName,
    this.filePath,
    this.bytes,
    this.stream,
    this.length,
    this.filename,
    this.contentType,
    this.isArray = false,
  });

  // Create from file path
  factory MultipartFileData.fromPath({
    required String fieldName,
    required String filePath,
    String? filename,
    DioMediaType? contentType,
    bool isArray = false,
  }) {
    return MultipartFileData(
      fieldName: fieldName,
      filePath: filePath,
      filename: filename,
      contentType: contentType,
      isArray: isArray,
    );
  }

  // Create from bytes
  factory MultipartFileData.fromBytes({
    required String fieldName,
    required Uint8List bytes,
    String? filename,
    DioMediaType? contentType,
    bool isArray = false,
  }) {
    return MultipartFileData(
      fieldName: fieldName,
      bytes: bytes,
      filename: filename,
      contentType: contentType,
      isArray: isArray,
    );
  }

  // Create from stream
  factory MultipartFileData.fromStream({
    required String fieldName,
    required Stream<List<int>> stream,
    required int length,
    String? filename,
    DioMediaType? contentType,
    bool isArray = false,
  }) {
    return MultipartFileData(
      fieldName: fieldName,
      stream: stream,
      length: length,
      filename: filename,
      contentType: contentType,
      isArray: isArray,
    );
  }
}
