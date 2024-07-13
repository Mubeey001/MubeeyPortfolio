import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mubeeyportfolio/util/constants/app_color.dart';

import '../../../controllers/tabs_web_controller.dart';

class TabsWeb extends StatelessWidget {
  TabsWeb({super.key, required this.title, required this.tag});
  final String title;
  final String tag;

  @override
  Widget build(BuildContext context) {
    final TabWebController c = Get.put(TabWebController(), tag: tag);
    return MouseRegion(
        onEnter: (event) => c.onSelected(),
        onExit: (event) => c.existSelected(),
        child: Obx(
          () => AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 100),
            curve: Curves.elasticIn,
            style: c.isSelected.value
                ? GoogleFonts.oswald(
                    shadows: [
                      const Shadow(color: Colors.black, offset: Offset(0, -8)),
                    ],
                    fontSize: 25.0,
                    color: Colors.transparent,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColor.appPrimaryColor,
                    decorationThickness: 2,
                  )
                : GoogleFonts.oswald(color: Colors.black, fontSize: 23.0),
            child: Text(
              title,
            ),
          ),
        ));
  }
}
