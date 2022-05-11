import 'package:flutter_application_1/screens/nfc/nfc_screen.dart';
import 'package:get/route_manager.dart';
import 'screens/home/home_screen.dart';

final pages = <GetPage>[
  GetPage(name: '/home', page: () => HomeScreen()),
  GetPage(name: '/nfc', page: () => NfcScreen())
];
