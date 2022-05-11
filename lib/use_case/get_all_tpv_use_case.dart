import 'package:flutter_application_1/domain/service/service.dart';

class GetAllTpvUseCase {
  final Service _service = Service();
  Future<String> call() => _service.getAllTpv();
}
