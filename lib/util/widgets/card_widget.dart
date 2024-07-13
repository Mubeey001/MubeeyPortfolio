import 'package:flutter/material.dart';
import 'package:mubeeyportfolio/util/constants/app_color.dart';
import 'package:mubeeyportfolio/util/widgets/app_text.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.imagePath,
    required this.cardText,
  });
  final String imagePath;
  final String cardText;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      shadowColor: AppColor.appPrimaryColor,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              height: 200,
              width: 200,
            ),
            const SizedBox(height: 10),
            sansBold(text: cardText, textSize: 15.0, bold: FontWeight.bold),
          ],
        ),
      ),
    );
  }
}
