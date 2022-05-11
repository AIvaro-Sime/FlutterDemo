import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'client.g.dart';

@RestApi(baseUrl: 'http://192.168.18.123:3000')
abstract class Client {
  factory Client(Dio dio) = _Client;

  @GET('/')
  Future<String> welcome();
}
