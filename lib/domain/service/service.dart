import '../../core/retrofit_helper.dart';

class Service {
  Service._privateConstructor();
  static final Service api = Service._privateConstructor();
  factory Service() => api;
  final client = RetrofitHelper.getApiClient();

  Future<String> getAllTpv() async {
    return await client.welcome();
  }
}
