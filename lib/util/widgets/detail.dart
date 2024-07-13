import 'package:flutter/material.dart';
import 'package:mubeeyportfolio/util/widgets/app_text.dart';

class Detail extends StatelessWidget {
  const Detail({super.key, required this.info, required this.infoIcon});
  final String info;
  final Icon infoIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        infoIcon,
        const SizedBox(width: 10.0),
        sansBold(text: info, textSize: 20),
      ],
    );
  }
}
