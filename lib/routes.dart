import 'package:flutter_application_1/ui/screens/home/home_screen.dart';
import 'package:flutter_application_1/ui/screens/nfc/nfc_screen.dart';
import 'package:get/route_manager.dart';


final pages = <GetPage>[
  GetPage(name: '/home', page: () => HomeScreen()),
  GetPage(name: '/nfc', page: () => NfcScreen())
];
