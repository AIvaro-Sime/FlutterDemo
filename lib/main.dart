import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

final darkTheme = ThemeData(brightness: Brightness.dark);
final lightTheme = ThemeData(brightness: Brightness.light);

void main() {
  runApp(ThemeProvider(
    initTheme: darkTheme,
    builder: (context, myTheme) {
      return GetMaterialApp(
        initialRoute: '/home',
        getPages: pages,
        theme: myTheme,
      );
    },
  ));
}
