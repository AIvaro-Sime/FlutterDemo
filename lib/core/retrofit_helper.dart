import 'package:dio/dio.dart';

import '../domain/client/client.dart';


class RetrofitHelper {
  static final _dio = Dio();
  static Client? _apiClient;

  static Client _initializeApiClient(){
    _dio.options.contentType = 'application/json';
    _dio.interceptors.clear();
    
    _apiClient = Client(_dio);
    return _apiClient!;
  }

  static Client getApiClient() {
    return _apiClient == null ? _initializeApiClient() : _apiClient!;
  }
}
