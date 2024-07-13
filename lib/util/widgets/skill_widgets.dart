import 'package:flutter/material.dart';
import 'package:mubeeyportfolio/util/constants/app_color.dart';
import 'package:mubeeyportfolio/util/widgets/app_text.dart';

class SkillsWidgets extends StatelessWidget {
  const SkillsWidgets({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: AppColor.appPrimaryColor,
            style: BorderStyle.solid,
            width: 2.0),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.all(7.0),
      child: sansBold(text: text, textSize: 15),
    );
  }
}
