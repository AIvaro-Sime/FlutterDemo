import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final homeController = Get.put(HomeController());

  @override
  Widget build(context) {
    return ThemeSwitchingArea(child: Builder(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('First App'),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.join_right),
            onPressed: () => Get.toNamed('/nfc'),
          ),
          actions: [
            ThemeSwitcher(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    // Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                    ThemeSwitcher.of(context).changeTheme(
                      theme: ThemeModelInheritedNotifier.of(context).theme.brightness == Brightness.light
                        ? darkTheme
                        : lightTheme
                    );
                  },
                  icon: Icon(
                    ThemeModelInheritedNotifier.of(context).theme.brightness == Brightness.light 
                      ? Icons.wb_sunny
                      : Icons.nightlight 
                  )
                );
              },
              clipper: const ThemeSwitcherCircleClipper(),
            )
          ],
        ),
        body: Column(children: [
          Center(
            child: Obx(() => Text('Clicks: ${homeController.counter}')),
          )
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: homeController.increment,
          child: const Icon(Icons.add),
        ),
      );
    }));
  }
}
