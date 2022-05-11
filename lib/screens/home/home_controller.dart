import 'dart:developer';
import 'package:flutter_application_1/extensions.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:nfc_manager/nfc_manager.dart';

class HomeController extends GetxController {
  final _counter = 0.obs;
  void increment() => _counter.value++;
  int get counter => _counter.value;
}
