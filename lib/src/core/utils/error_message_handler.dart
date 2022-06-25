import 'package:dio/dio.dart';

extension ErrorHandler on Exception {
  String get errorMessage {
    var error = this as DioError;
    try {
      return error.response?.data['message'] ?? 'Something went wrong';
    } catch (e) {
      return 'Something went wrong';
    }
  }
}