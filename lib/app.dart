import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mubeeyportfolio/util/device/mobile/landing_page_mobile.dart';
import 'package:mubeeyportfolio/util/device/web/landing_page_wed.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Mubeey',
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return const LandingPageWed();
          } else {
            return const LandingPageMobile();
          }
        },
      ),
    );
  }
}
